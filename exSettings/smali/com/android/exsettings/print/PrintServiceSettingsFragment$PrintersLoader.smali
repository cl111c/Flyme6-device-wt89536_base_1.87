.class Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;
.super Landroid/content/Loader;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrintersLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/print/PrinterInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mDiscoverySession:Landroid/print/PrinterDiscoverySession;

.field private final mPrinters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 672
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 666
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    .line 673
    return-void
.end method

.method static synthetic access$1800(Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;)Landroid/print/PrinterDiscoverySession;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    return-object v0
.end method

.method private cancelInternal()Z
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->isPrinterDiscoveryStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->stopPrinterDiscovery()V

    .line 745
    const/4 v0, 0x1

    .line 747
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadInternal()V
    .locals 3

    .prologue
    .line 751
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-nez v1, :cond_0

    .line 752
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "print"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 754
    .local v0, "printManager":Landroid/print/PrintManager;
    invoke-virtual {v0}, Landroid/print/PrintManager;->createPrinterDiscoverySession()Landroid/print/PrinterDiscoverySession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    .line 755
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    new-instance v2, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader$1;

    invoke-direct {v2, p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader$1;-><init>(Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;)V

    invoke-virtual {v1, v2}, Landroid/print/PrinterDiscoverySession;->setOnPrintersChangeListener(Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;)V

    .line 763
    .end local v0    # "printManager":Landroid/print/PrintManager;
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/print/PrinterDiscoverySession;->startPrinterDiscovery(Ljava/util/List;)V

    .line 764
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 660
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 677
    .local p1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    invoke-super {p0, p1}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 680
    :cond_0
    return-void
.end method

.method protected onAbandon()V
    .locals 0

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->onStopLoading()V

    .line 739
    return-void
.end method

.method protected onCancelLoad()Z
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->cancelInternal()Z

    move-result v0

    return v0
.end method

.method protected onForceLoad()V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->loadInternal()V

    .line 710
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->onStopLoading()V

    .line 726
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 727
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->destroy()V

    .line 729
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->mDiscoverySession:Landroid/print/PrinterDiscoverySession;

    .line 731
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->mPrinters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->deliverResult(Ljava/util/List;)V

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->onForceLoad()V

    .line 694
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersLoader;->onCancelLoad()Z

    .line 702
    return-void
.end method