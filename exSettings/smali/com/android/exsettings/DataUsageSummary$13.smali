.class Lcom/android/exsettings/DataUsageSummary$13;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/exsettings/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$13;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$13;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # invokes: Lcom/android/exsettings/DataUsageSummary;->updateDetailData()V
    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->access$2000(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1646
    return-void
.end method

.method public onLimitChanged()V
    .locals 4

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$13;->this$0:Lcom/android/exsettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$13;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$500(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v2

    # invokes: Lcom/android/exsettings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/android/exsettings/DataUsageSummary;->access$1500(Lcom/android/exsettings/DataUsageSummary;J)V

    .line 1656
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$13;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # invokes: Lcom/android/exsettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->access$100(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1657
    return-void
.end method

.method public onWarningChanged()V
    .locals 4

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$13;->this$0:Lcom/android/exsettings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$13;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$500(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v2

    # invokes: Lcom/android/exsettings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v2, v3}, Lcom/android/exsettings/DataUsageSummary;->access$3000(Lcom/android/exsettings/DataUsageSummary;J)V

    .line 1651
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$13;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1667
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$13;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1662
    return-void
.end method
