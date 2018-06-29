#include<iostream>
using namespace std;
typedef struct Lnode
{
	float m;//系数
	int   n;//指数
	struct Lnode *next;//指针
}Lnode, *Linklist;
void CreatList_L(Linklist &L, int n)
{
	cout << "请输入多项式的项数：";
	cin >> n;
	Linklist q, pre, s;
	L = new Lnode;
	L->next = NULL;
	cout << "请输入多项式的系数和指数：" << endl;
	for (int i = 1; i <= n; i++)
	{
		s = new Lnode;
		cin >> s->m >> s->n;
		pre = L;
		q = L->next;
		while (q&&q->n<s->n)
		{
			pre = q; q = q->next;//两个节点同时往后走一步
		}
		s->next = q;
		pre->next = s;
	}
}
Linklist Add(Linklist &La, Linklist &Lb)
{

	Linklist L1,L2,L3, r, p;
	L1 = La->next;
	L2 = Lb->next;
	L3 = La;
	p = L3;
	while (L1&&L2)
	{
		if (L1->n == L2->n)
		{
			int sum = L1->m + L2->m;
			if (sum != 0)
			{
				L3->next = L1; L3 = L1;
				L1->m = sum;
				L1 = L1->next;
				r = L2;
				L2 = L2->next;
				delete r;
			}
			else
			{
				r = L1; L1 = L1->next; delete r;
				r = L2; L2 = L2->next; delete r;
			}
		}
		else if (L1->n<L2->n)
		{
			L3->next = L1;
			L3 = L1;
			L1 = L1->next;
		}
		else
		{
			L3->next = L2;
			L3 = L2;
			L2 = L2->next;
		}
	}
	L3->next = L1 ? L1 : L2;
	delete Lb;
	return p;
}
Linklist inverse(Linklist &La)
{
	Linklist p, q;
	p = La->next; La->next = NULL;
	while (p)
	{
		q = p->next; p->next = La->next; La->next = p;
		p = q;
	}
	return La;

}
void Traverse(Linklist &La)
{
	Linklist p;
	p = La->next;
	while (p != NULL)
	{
		cout << p->m << "x^" << p->n;
		if (p->next != NULL)
			cout << "+";
		p = p->next;
	}
}
int main()
{
	int n = 0;
	Linklist La, Lb;
	CreatList_L(La, n);
	CreatList_L(Lb, n);
	Add(La, Lb);
	cout << "输出合并后多项式：" << endl;
	Traverse(La);
	cout << endl;
	inverse(La);
	cout << "输出合并并逆置后多项式：" << endl;
	Traverse(La);
	cout << endl;
}