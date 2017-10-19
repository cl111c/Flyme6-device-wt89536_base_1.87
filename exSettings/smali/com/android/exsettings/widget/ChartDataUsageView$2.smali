.class Lcom/android/exsettings/widget/ChartDataUsageView$2;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/exsettings/widget/ChartSweepView$OnSweepListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/widget/ChartDataUsageView;


# direct methods
.method constructor <init>(Lcom/android/exsettings/widget/ChartDataUsageView;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/exsettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/exsettings/widget/ChartSweepView;Z)V
    .locals 1
    .param p1, "sweep"    # Lcom/android/exsettings/widget/ChartSweepView;
    .param p2, "sweepDone"    # Z

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # invokes: Lcom/android/exsettings/widget/ChartDataUsageView;->updatePrimaryRange()V
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$300(Lcom/android/exsettings/widget/ChartDataUsageView;)V

    .line 313
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # getter for: Lcom/android/exsettings/widget/ChartDataUsageView;->mListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$400(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$2;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # getter for: Lcom/android/exsettings/widget/ChartDataUsageView;->mListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$400(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;->onInspectRangeChanged()V

    .line 316
    :cond_0
    return-void
.end method

.method public requestEdit(Lcom/android/exsettings/widget/ChartSweepView;)V
    .locals 0
    .param p1, "sweep"    # Lcom/android/exsettings/widget/ChartSweepView;

    .prologue
    .line 321
    return-void
.end method
