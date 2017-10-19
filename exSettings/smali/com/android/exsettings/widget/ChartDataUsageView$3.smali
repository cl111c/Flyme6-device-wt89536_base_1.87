.class Lcom/android/exsettings/widget/ChartDataUsageView$3;
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
    .line 335
    iput-object p1, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSweep(Lcom/android/exsettings/widget/ChartSweepView;Z)V
    .locals 2
    .param p1, "sweep"    # Lcom/android/exsettings/widget/ChartSweepView;
    .param p2, "sweepDone"    # Z

    .prologue
    .line 338
    if-eqz p2, :cond_2

    .line 339
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # invokes: Lcom/android/exsettings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/exsettings/widget/ChartSweepView;)V
    invoke-static {v0, p1}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$500(Lcom/android/exsettings/widget/ChartDataUsageView;Lcom/android/exsettings/widget/ChartSweepView;)V

    .line 340
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # invokes: Lcom/android/exsettings/widget/ChartDataUsageView;->updateEstimateVisible()V
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$100(Lcom/android/exsettings/widget/ChartDataUsageView;)V

    .line 342
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # getter for: Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$600(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # getter for: Lcom/android/exsettings/widget/ChartDataUsageView;->mListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$400(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # getter for: Lcom/android/exsettings/widget/ChartDataUsageView;->mListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$400(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;->onWarningChanged()V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # getter for: Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$700(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # getter for: Lcom/android/exsettings/widget/ChartDataUsageView;->mListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$400(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # getter for: Lcom/android/exsettings/widget/ChartDataUsageView;->mListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$400(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;->onLimitChanged()V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    const/4 v1, 0x0

    # invokes: Lcom/android/exsettings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/exsettings/widget/ChartSweepView;Z)V
    invoke-static {v0, p1, v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$200(Lcom/android/exsettings/widget/ChartDataUsageView;Lcom/android/exsettings/widget/ChartSweepView;Z)V

    goto :goto_0
.end method

.method public requestEdit(Lcom/android/exsettings/widget/ChartSweepView;)V
    .locals 1
    .param p1, "sweep"    # Lcom/android/exsettings/widget/ChartSweepView;

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # getter for: Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/exsettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$600(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # getter for: Lcom/android/exsettings/widget/ChartDataUsageView;->mListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$400(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # getter for: Lcom/android/exsettings/widget/ChartDataUsageView;->mListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$400(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;->requestWarningEdit()V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # getter for: Lcom/android/exsettings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/exsettings/widget/ChartSweepView;
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$700(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartSweepView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # getter for: Lcom/android/exsettings/widget/ChartDataUsageView;->mListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$400(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/exsettings/widget/ChartDataUsageView$3;->this$0:Lcom/android/exsettings/widget/ChartDataUsageView;

    # getter for: Lcom/android/exsettings/widget/ChartDataUsageView;->mListener:Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;
    invoke-static {v0}, Lcom/android/exsettings/widget/ChartDataUsageView;->access$400(Lcom/android/exsettings/widget/ChartDataUsageView;)Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;->requestLimitEdit()V

    goto :goto_0
.end method
