.class Lcom/android/exsettings/DataUsageSummary$11;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/exsettings/net/ChartData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/exsettings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/exsettings/net/ChartData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1572
    new-instance v0, Lcom/android/exsettings/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    invoke-virtual {v1}, Lcom/android/exsettings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/exsettings/DataUsageSummary;->access$2100(Lcom/android/exsettings/DataUsageSummary;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/android/exsettings/net/ChartDataLoader;-><init>(Landroid/content/Context;Landroid/net/INetworkStatsSession;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/exsettings/net/ChartData;)V
    .locals 2
    .param p2, "data"    # Lcom/android/exsettings/net/ChartData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/exsettings/net/ChartData;",
            ">;",
            "Lcom/android/exsettings/net/ChartData;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1577
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/exsettings/net/ChartData;>;"
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # setter for: Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;
    invoke-static {v0, p2}, Lcom/android/exsettings/DataUsageSummary;->access$2202(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettings/net/ChartData;)Lcom/android/exsettings/net/ChartData;

    .line 1578
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->access$500(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$2200(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/exsettings/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1579
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->access$500(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/widget/ChartDataUsageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;
    invoke-static {v1}, Lcom/android/exsettings/DataUsageSummary;->access$2200(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/net/ChartData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/exsettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1582
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    const/4 v1, 0x1

    # invokes: Lcom/android/exsettings/DataUsageSummary;->updatePolicy(Z)V
    invoke-static {v0, v1}, Lcom/android/exsettings/DataUsageSummary;->access$1300(Lcom/android/exsettings/DataUsageSummary;Z)V

    .line 1583
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # invokes: Lcom/android/exsettings/DataUsageSummary;->updateAppDetail()V
    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->access$2300(Lcom/android/exsettings/DataUsageSummary;)V

    .line 1586
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;
    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->access$2200(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/net/ChartData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/exsettings/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->access$2400(Lcom/android/exsettings/DataUsageSummary;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1589
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1569
    check-cast p2, Lcom/android/exsettings/net/ChartData;

    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/DataUsageSummary$11;->onLoadFinished(Landroid/content/Loader;Lcom/android/exsettings/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/exsettings/net/ChartData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/exsettings/net/ChartData;>;"
    const/4 v1, 0x0

    .line 1593
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # setter for: Lcom/android/exsettings/DataUsageSummary;->mChartData:Lcom/android/exsettings/net/ChartData;
    invoke-static {v0, v1}, Lcom/android/exsettings/DataUsageSummary;->access$2202(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettings/net/ChartData;)Lcom/android/exsettings/net/ChartData;

    .line 1594
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->access$500(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->bindNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1595
    iget-object v0, p0, Lcom/android/exsettings/DataUsageSummary$11;->this$0:Lcom/android/exsettings/DataUsageSummary;

    # getter for: Lcom/android/exsettings/DataUsageSummary;->mChart:Lcom/android/exsettings/widget/ChartDataUsageView;
    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->access$500(Lcom/android/exsettings/DataUsageSummary;)Lcom/android/exsettings/widget/ChartDataUsageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/exsettings/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1596
    return-void
.end method
