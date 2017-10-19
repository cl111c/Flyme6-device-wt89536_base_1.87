.class final Lcom/android/exsettings/DataUsageSummary$14;
.super Lcom/android/exsettings/search/BaseSearchIndexProvider;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2835
    invoke-direct {p0}, Lcom/android/exsettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
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
    .line 2838
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2840
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/search/SearchIndexableRaw;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2850
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 2851
    .local v0, "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    const-string v3, "data_usage_enable_mobile"

    iput-object v3, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 2852
    const v3, 0x7f0c08bb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 2853
    const v3, 0x7f0c0890

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 2854
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2875
    return-object v2
.end method
