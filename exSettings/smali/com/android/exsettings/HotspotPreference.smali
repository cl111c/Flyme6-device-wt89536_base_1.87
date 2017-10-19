.class public Lcom/android/exsettings/HotspotPreference;
.super Landroid/preference/Preference;
.source "HotspotPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSubSummary:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/exsettings/HotspotPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-object p1, p0, Lcom/android/exsettings/HotspotPreference;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/HotspotPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    iput-object p1, p0, Lcom/android/exsettings/HotspotPreference;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-object p1, p0, Lcom/android/exsettings/HotspotPreference;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 80
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exsettings/HotspotPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 68
    iget-object v2, p0, Lcom/android/exsettings/HotspotPreference;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 70
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04007e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 71
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f120113

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/exsettings/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    .line 72
    iget-object v2, p0, Lcom/android/exsettings/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    const v2, 0x7f12001a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/exsettings/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    .line 74
    iget-object v2, p0, Lcom/android/exsettings/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 75
    iget-boolean v2, p0, Lcom/android/exsettings/HotspotPreference;->mSwitchEnabled:Z

    invoke-virtual {p0, v2}, Lcom/android/exsettings/HotspotPreference;->setChecked(Z)V

    .line 76
    return-object v1
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/exsettings/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/exsettings/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/android/exsettings/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/exsettings/HotspotPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 97
    :cond_0
    iput-boolean p1, p0, Lcom/android/exsettings/HotspotPreference;->mSwitchEnabled:Z

    .line 98
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/exsettings/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/exsettings/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/android/exsettings/HotspotPreference;->mSubSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
