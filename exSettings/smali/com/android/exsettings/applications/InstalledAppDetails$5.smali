.class Lcom/android/exsettings/applications/InstalledAppDetails$5;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/applications/InstalledAppDetails;
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
.field final synthetic this$0:Lcom/android/exsettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/exsettings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 938
    iput-object p1, p0, Lcom/android/exsettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

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
    .line 942
    new-instance v0, Lcom/android/exsettings/net/ChartDataLoader;

    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Lcom/android/exsettings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    # getter for: Lcom/android/exsettings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/exsettings/applications/InstalledAppDetails;->access$700(Lcom/android/exsettings/applications/InstalledAppDetails;)Landroid/net/INetworkStatsSession;

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
    .line 947
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/exsettings/net/ChartData;>;"
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    # setter for: Lcom/android/exsettings/applications/InstalledAppDetails;->mChartData:Lcom/android/exsettings/net/ChartData;
    invoke-static {v0, p2}, Lcom/android/exsettings/applications/InstalledAppDetails;->access$802(Lcom/android/exsettings/applications/InstalledAppDetails;Lcom/android/exsettings/net/ChartData;)Lcom/android/exsettings/net/ChartData;

    .line 948
    iget-object v0, p0, Lcom/android/exsettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    # getter for: Lcom/android/exsettings/applications/InstalledAppDetails;->mDataPreference:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/exsettings/applications/InstalledAppDetails;->access$1000(Lcom/android/exsettings/applications/InstalledAppDetails;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/applications/InstalledAppDetails$5;->this$0:Lcom/android/exsettings/applications/InstalledAppDetails;

    # invokes: Lcom/android/exsettings/applications/InstalledAppDetails;->getDataSummary()Ljava/lang/CharSequence;
    invoke-static {v1}, Lcom/android/exsettings/applications/InstalledAppDetails;->access$900(Lcom/android/exsettings/applications/InstalledAppDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 949
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 938
    check-cast p2, Lcom/android/exsettings/net/ChartData;

    invoke-virtual {p0, p1, p2}, Lcom/android/exsettings/applications/InstalledAppDetails$5;->onLoadFinished(Landroid/content/Loader;Lcom/android/exsettings/net/ChartData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
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
    .line 954
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Lcom/android/exsettings/net/ChartData;>;"
    return-void
.end method
