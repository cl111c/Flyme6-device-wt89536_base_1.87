.class public Lcom/android/exsettings/SwitchPreferenceOnly;
.super Landroid/preference/SwitchPreference;
.source "SwitchPreferenceOnly.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    const v0, 0x101036d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exsettings/SwitchPreferenceOnly;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;
    .param p3, "paramInt"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method private clearListenerInViewGroup(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    if-nez p1, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 37
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 38
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 39
    .local v1, "childView":Landroid/view/View;
    instance-of v5, v1, Landroid/widget/Switch;

    if-eqz v5, :cond_2

    move-object v4, v1

    .line 40
    check-cast v4, Landroid/widget/Switch;

    .line 41
    .local v4, "switchView":Landroid/widget/Switch;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 42
    new-instance v5, Lcom/android/exsettings/SwitchPreferenceOnly$1;

    invoke-direct {v5, p0, v4}, Lcom/android/exsettings/SwitchPreferenceOnly$1;-><init>(Lcom/android/exsettings/SwitchPreferenceOnly;Landroid/widget/Switch;)V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 51
    .end local v4    # "switchView":Landroid/widget/Switch;
    :cond_2
    instance-of v5, v1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    move-object v0, v1

    .line 52
    check-cast v0, Landroid/view/ViewGroup;

    .line 53
    .local v0, "childGroup":Landroid/view/ViewGroup;
    invoke-direct {p0, v0}, Lcom/android/exsettings/SwitchPreferenceOnly;->clearListenerInViewGroup(Landroid/view/ViewGroup;)V

    .line 37
    .end local v0    # "childGroup":Landroid/view/ViewGroup;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "paramView"    # Landroid/view/View;

    .prologue
    .line 28
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 29
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-direct {p0, v0}, Lcom/android/exsettings/SwitchPreferenceOnly;->clearListenerInViewGroup(Landroid/view/ViewGroup;)V

    .line 30
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 31
    return-void
.end method

.method public onClick()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
