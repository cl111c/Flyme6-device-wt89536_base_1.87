.class Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;
.super Landroid/database/DataSetObserver;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 2

    .prologue
    .line 106
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    # getter for: Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mPrintersAdapter:Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;
    invoke-static {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->access$200(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v0

    .line 107
    .local v0, "unfilteredItemCount":I
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    # getter for: Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I
    invoke-static {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->access$300(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-gtz v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    # getter for: Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I
    invoke-static {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->access$300(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-lez v1, :cond_2

    if-gtz v0, :cond_2

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    # setter for: Lcom/android/exsettings/print/PrintServiceSettingsFragment;->mLastUnfilteredItemCount:I
    invoke-static {v1, v0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->access$302(Lcom/android/exsettings/print/PrintServiceSettingsFragment;I)I

    .line 112
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->invalidateOptionsMenuIfNeeded()V

    .line 97
    iget-object v0, p0, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/exsettings/print/PrintServiceSettingsFragment;

    # invokes: Lcom/android/exsettings/print/PrintServiceSettingsFragment;->updateEmptyView()V
    invoke-static {v0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment;->access$100(Lcom/android/exsettings/print/PrintServiceSettingsFragment;)V

    .line 98
    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/exsettings/print/PrintServiceSettingsFragment$2;->invalidateOptionsMenuIfNeeded()V

    .line 103
    return-void
.end method