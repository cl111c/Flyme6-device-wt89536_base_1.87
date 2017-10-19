.class public Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;
.super Landroid/app/Fragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exsettings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDetailsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2073
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "parent"    # Lcom/android/exsettings/DataUsageSummary;
    .param p1, "app"    # Lcom/android/exsettings/DataUsageSummary$AppItem;
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 2077
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;Z)V

    .line 2078
    return-void
.end method

.method public static show(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettings/DataUsageSummary$AppItem;Ljava/lang/CharSequence;Z)V
    .locals 5
    .param p0, "parent"    # Lcom/android/exsettings/DataUsageSummary;
    .param p1, "app"    # Lcom/android/exsettings/DataUsageSummary$AppItem;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "addToBack"    # Z

    .prologue
    .line 2082
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2098
    :goto_0
    return-void

    .line 2084
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2085
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "app"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2087
    new-instance v1, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;

    invoke-direct {v1}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;-><init>()V

    .line 2088
    .local v1, "fragment":Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;
    invoke-virtual {v1, v0}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2089
    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2090
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 2091
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const-string v3, "appDetails"

    invoke-virtual {v2, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2092
    if-eqz p3, :cond_1

    .line 2093
    const-string v3, "appDetails"

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2095
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0891

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    .line 2097
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method


# virtual methods
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 2118
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2123
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 2120
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 2121
    const/4 v0, 0x1

    goto :goto_0

    .line 2118
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 2102
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2103
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/DataUsageSummary;

    .line 2104
    .local v0, "target":Lcom/android/exsettings/DataUsageSummary;
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/exsettings/DataUsageSummary$AppItem;

    # setter for: Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/exsettings/DataUsageSummary;->access$3102(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettings/DataUsageSummary$AppItem;)Lcom/android/exsettings/DataUsageSummary$AppItem;

    .line 2105
    # invokes: Lcom/android/exsettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->access$100(Lcom/android/exsettings/DataUsageSummary;)V

    .line 2106
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 2110
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2111
    invoke-virtual {p0}, Lcom/android/exsettings/DataUsageSummary$AppDetailsFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/DataUsageSummary;

    .line 2112
    .local v0, "target":Lcom/android/exsettings/DataUsageSummary;
    const/4 v1, 0x0

    # setter for: Lcom/android/exsettings/DataUsageSummary;->mCurrentApp:Lcom/android/exsettings/DataUsageSummary$AppItem;
    invoke-static {v0, v1}, Lcom/android/exsettings/DataUsageSummary;->access$3102(Lcom/android/exsettings/DataUsageSummary;Lcom/android/exsettings/DataUsageSummary$AppItem;)Lcom/android/exsettings/DataUsageSummary$AppItem;

    .line 2113
    # invokes: Lcom/android/exsettings/DataUsageSummary;->updateBody()V
    invoke-static {v0}, Lcom/android/exsettings/DataUsageSummary;->access$100(Lcom/android/exsettings/DataUsageSummary;)V

    .line 2114
    return-void
.end method
