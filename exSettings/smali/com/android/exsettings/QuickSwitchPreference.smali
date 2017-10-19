.class public Lcom/android/exsettings/QuickSwitchPreference;
.super Landroid/preference/Preference;
.source "QuickSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/QuickSwitchPreference$OnSwitchCaughtListener;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field public mImageView:Landroid/widget/ImageView;

.field private mOnSwitchCaughtListener:Lcom/android/exsettings/QuickSwitchPreference$OnSwitchCaughtListener;

.field public mSwitch:Landroid/widget/Switch;

.field public mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/QuickSwitchPreference;->mChecked:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/QuickSwitchPreference;->mChecked:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exsettings/QuickSwitchPreference;->mChecked:Z

    .line 41
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 50
    const v0, 0x7f12016c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/exsettings/QuickSwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 52
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/exsettings/QuickSwitchPreference;->mTextView:Landroid/widget/TextView;

    .line 53
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/exsettings/QuickSwitchPreference;->mImageView:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/android/exsettings/QuickSwitchPreference;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/exsettings/QuickSwitchPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/exsettings/QuickSwitchPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/exsettings/QuickSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0148

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/exsettings/QuickSwitchPreference;->mTextView:Landroid/widget/TextView;

    const-string v1, "#b2b2b2"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    iget-object v0, p0, Lcom/android/exsettings/QuickSwitchPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/exsettings/QuickSwitchPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/exsettings/QuickSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020125

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/exsettings/QuickSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/exsettings/QuickSwitchPreference;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/exsettings/QuickSwitchPreference;->mOnSwitchCaughtListener:Lcom/android/exsettings/QuickSwitchPreference$OnSwitchCaughtListener;

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/android/exsettings/QuickSwitchPreference;->mOnSwitchCaughtListener:Lcom/android/exsettings/QuickSwitchPreference$OnSwitchCaughtListener;

    iget-object v1, p0, Lcom/android/exsettings/QuickSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-interface {v0, v1}, Lcom/android/exsettings/QuickSwitchPreference$OnSwitchCaughtListener;->onSwitchCaught(Landroid/widget/Switch;)Z

    .line 69
    :cond_2
    return-void
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public setOnSwitchCaughtListener(Lcom/android/exsettings/QuickSwitchPreference$OnSwitchCaughtListener;)V
    .locals 0
    .param p1, "paramOnSwitchCaughtListener"    # Lcom/android/exsettings/QuickSwitchPreference$OnSwitchCaughtListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/exsettings/QuickSwitchPreference;->mOnSwitchCaughtListener:Lcom/android/exsettings/QuickSwitchPreference$OnSwitchCaughtListener;

    .line 79
    return-void
.end method
