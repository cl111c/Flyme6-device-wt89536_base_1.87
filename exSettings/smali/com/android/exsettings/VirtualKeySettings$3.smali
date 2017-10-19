.class final Lcom/android/exsettings/VirtualKeySettings$3;
.super Lcom/android/exsettings/search/BaseSearchIndexProvider;
.source "VirtualKeySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/VirtualKeySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
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
    const v3, 0x7f0c0d16

    .line 154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/search/SearchIndexableRaw;>;"
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 158
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 159
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    return-object v1
.end method
