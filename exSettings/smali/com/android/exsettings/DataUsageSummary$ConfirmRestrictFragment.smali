.class public Lcom/android/exsettings/DataUsageSummary$ConfirmRestrictFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmRestrictFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2421
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/exsettings/DataUsageSummary;)V
    .locals 3
    .param p0, "parent"    # Lcom/android/exsettings/DataUsageSummary;

    .prologue
    .line 2423
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2428
    :goto_0
    return-void

    .line 2425
    :cond_0
    new-instance v0, Lcom/android/exsettings/DataUsageSummary$ConfirmRestrictFragment;

    invoke-direct {v0}, Lcom/android/exsettings/DataUsageSummary$ConfirmRestrictFragment;-><init>()V

    .line 2426
    .local v0, "dialog":Lcom/android/exsettings/DataUsageSummary$ConfirmRestrictFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/exsettings/DataUsageSummary$ConfirmRestrictFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2427
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmRestrict"

    invoke-virtual {v0, v1, v2}, Lcom/android/exsettings/DataUsageSummary$ConfirmRestrictFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2432
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary$ConfirmRestrictFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2434
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2435
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c08d2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2436
    invoke-static {v1}, Lcom/android/exsettings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2437
    const v2, 0x7f0c08d4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2442
    :goto_0
    const v2, 0x104000a

    new-instance v3, Lcom/android/exsettings/DataUsageSummary$ConfirmRestrictFragment$1;

    invoke-direct {v3, p0}, Lcom/android/exsettings/DataUsageSummary$ConfirmRestrictFragment$1;-><init>(Lcom/android/exsettings/DataUsageSummary$ConfirmRestrictFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2451
    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2453
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 2439
    :cond_0
    const v2, 0x7f0c08d3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
