.class final Lcom/android/exsettings/wifi/WifiSettings$6;
.super Lcom/android/exsettings/search/BaseSearchIndexProvider;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1226
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
    const/4 v8, 0x0

    const v7, 0x7f0c0276

    .line 1229
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1233
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/android/exsettings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1234
    .local v2, "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1235
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1236
    const v6, 0x7f0c09f0

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 1237
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    const/4 v6, 0x1

    invoke-static {p1, v6, v8, v8}, Lcom/android/exsettingslib/wifi/WifiTracker;->getCurrentAccessPoints(Landroid/content/Context;ZZZ)Ljava/util/List;

    move-result-object v1

    .line 1242
    .local v1, "accessPoints":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/exsettingslib/wifi/AccessPoint;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exsettingslib/wifi/AccessPoint;

    .line 1243
    .local v0, "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    new-instance v2, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v2    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v2, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 1244
    .restart local v2    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-virtual {v0}, Lcom/android/exsettingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1245
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1246
    iput-boolean p2, v2, Lcom/android/exsettings/search/SearchIndexableRaw;->enabled:Z

    .line 1247
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1250
    .end local v0    # "accessPoint":Lcom/android/exsettingslib/wifi/AccessPoint;
    :cond_0
    return-object v5
.end method
