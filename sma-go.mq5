#import "sma-go.dll"
//void sma(const double &CLOSE[], const int PREV_CALCULATED,
//		const int RATES_TOTAL, const int PERIOD, double &sma[]);
int add(int x, int y);
int sum(int &a[], int n);
#import

input int PERIOD = 12;

#property indicator_chart_window

#property indicator_buffers 1
#property indicator_plots   1

#property indicator_label1 "SMA"
#property indicator_type1  DRAW_LINE
#property indicator_color1 clrRed
#property indicator_style1 STYLE_SOLID
#property indicator_width1 2

double sma[];

int OnInit()
{
	int a[] = {2, 3, 5, 7};

	SetIndexBuffer(0, sma, INDICATOR_DATA);

	Print(add(2, 3));
	Print(sum(a, 4));

	return INIT_SUCCEEDED;
}

int OnCalculate(const int       RATES_TOTAL,
		const int       PREV_CALCULATED,
		const datetime &TIME[],
		const double   &OPEN[],
		const double   &HIGH[],
		const double   &LOW[],
		const double   &CLOSE[],
		const long     &TICK_VOLUME[],
		const long     &VOLUME[],
		const int      &SPREAD[])
{
	int start;
	int end;

	if (PREV_CALCULATED == 0) {
		start = 0;
	} else {
		start = PREV_CALCULATED - 1;
	}

	end = RATES_TOTAL - 1;

	Print("start => ", start, ", end => ", end);

	//sma(CLOSE, PREV_CALCULATED, RATES_TOTAL, PERIOD, sma);

	return RATES_TOTAL;
}
