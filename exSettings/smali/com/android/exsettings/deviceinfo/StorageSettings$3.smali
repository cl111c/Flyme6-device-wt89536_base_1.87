.class final Lcom/android/exsettings/deviceinfo/StorageSettings$3;
.super Lcom/android/exsettings/search/BaseSearchIndexProvider;
.source "StorageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 549
    invoke-direct {p0}, Lcom/android/exsettings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 8
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
    const v7, 0x7f0c03d9

    .line 552
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 554
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/exsettings/search/SearchIndexableRaw;>;"
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 555
    .local v0, "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 556
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 557
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 560
    .restart local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    const v6, 0x7f0c057f

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 561
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 562
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 565
    .restart local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 566
    .local v3, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v5

    .line 567
    .local v5, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 568
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    # invokes: Lcom/android/exsettings/deviceinfo/StorageSettings;->isInteresting(Landroid/os/storage/VolumeInfo;)Z
    invoke-static {v4}, Lcom/android/exsettings/deviceinfo/StorageSettings;->access$000(Landroid/os/storage/VolumeInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 569
    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 570
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 571
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 575
    .end local v4    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_1
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 576
    .restart local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    const v6, 0x7f0c03f6

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 577
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 578
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 581
    .restart local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    const v6, 0x7f0c03f4

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 582
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 583
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 586
    .restart local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    const v6, 0x7f0c03f8

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 587
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 588
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 591
    .restart local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    const v6, 0x7f0c03fb

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 592
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 593
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 596
    .restart local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    const v6, 0x7f0c03fc

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 597
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 598
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 601
    .restart local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    const v6, 0x7f0c03fa

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 602
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 603
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 606
    .restart local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    const v6, 0x7f0c03fe

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 607
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 608
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    new-instance v0, Lcom/android/exsettings/search/SearchIndexableRaw;

    .end local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    invoke-direct {v0, p1}, Lcom/android/exsettings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 611
    .restart local v0    # "data":Lcom/android/exsettings/search/SearchIndexableRaw;
    const v6, 0x7f0c03fd

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 612
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/exsettings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 613
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    return-object v2
.end method
