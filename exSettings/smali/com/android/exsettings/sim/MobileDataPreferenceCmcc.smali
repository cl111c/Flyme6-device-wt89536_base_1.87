.class public Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;
.super Landroid/preference/Preference;
.source "MobileDataPreferenceCmcc.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDataEnabler:Lcom/android/exsettings/DataEnabler;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-object p1, p0, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 40
    const v0, 0x7f12001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;->mSwitch:Landroid/widget/Switch;

    .line 41
    new-instance v0, Lcom/android/exsettings/DataEnabler;

    iget-object v1, p0, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;->mSwitch:Landroid/widget/Switch;

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/DataEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;->mDataEnabler:Lcom/android/exsettings/DataEnabler;

    .line 42
    invoke-virtual {p0}, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;->onResume()V

    .line 43
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;->mDataEnabler:Lcom/android/exsettings/DataEnabler;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;->mDataEnabler:Lcom/android/exsettings/DataEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/DataEnabler;->pause()V

    .line 61
    :cond_0
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 48
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;->mDataEnabler:Lcom/android/exsettings/DataEnabler;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/exsettings/sim/MobileDataPreferenceCmcc;->mDataEnabler:Lcom/android/exsettings/DataEnabler;

    invoke-virtual {v0}, Lcom/android/exsettings/DataEnabler;->resume()V

    .line 55
    :cond_0
    return-void
.end method
