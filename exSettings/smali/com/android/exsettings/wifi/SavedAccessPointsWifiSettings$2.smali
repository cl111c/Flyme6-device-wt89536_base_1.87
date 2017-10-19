.class final Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings$2;
.super Lcom/android/exsettings/search/BaseSearchIndexProvider;
.source "SavedAccessPointsWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/android/exsettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/exsettings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 198
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 200
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x7f0c0301

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, "title":Ljava/lang/String;
    new-instance v2, Lcom/android/exsettings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 204
    .local v2, "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    iput-object v6, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 205
    iput-object v6, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 206
    iput-boolean p2, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->enabled:Z

    .line 207
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    const/4 v7, 0x0

    invoke-static {p1, v8, v7, v8}, Lcom/android/exsettingslib/wifi/WifiTracker;->getCurrentAccessPoints(Landroid/content/Context;ZZZ)Ljava/util/List;

    move-result-object v0

    .line 213
    .local v0, "accessPoints":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 214
    .local v1, "accessPointsSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 215
    new-instance v2, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 216
    .restart local v2    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/exsettingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 217
    iput-object v6, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 218
    iput-boolean p2, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->enabled:Z

    .line 219
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    :cond_0
    return-object v5
.end method
