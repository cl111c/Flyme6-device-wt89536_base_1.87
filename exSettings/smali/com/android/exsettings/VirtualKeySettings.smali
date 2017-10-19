.class public Lcom/android/exsettings/VirtualKeySettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "VirtualKeySettings.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Lcom/android/exsettings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;


# instance fields
.field private LeftImage:Landroid/widget/ImageView;

.field private RightImage:Landroid/widget/ImageView;

.field private mLeftBackButton:Landroid/widget/RadioButton;

.field private mLeftchoose:Landroid/widget/RadioGroup;

.field private mRightBackButton:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    new-instance v0, Lcom/android/exsettings/VirtualKeySettings$3;

    invoke-direct {v0}, Lcom/android/exsettings/VirtualKeySettings$3;-><init>()V

    sput-object v0, Lcom/android/exsettings/VirtualKeySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/exsettings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/VirtualKeySettings;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/VirtualKeySettings;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/exsettings/VirtualKeySettings;->RightImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/VirtualKeySettings;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/VirtualKeySettings;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/exsettings/VirtualKeySettings;->LeftImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exsettings/VirtualKeySettings;)Landroid/widget/RadioGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/VirtualKeySettings;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/exsettings/VirtualKeySettings;->mLeftchoose:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method private loadFromSettings()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/exsettings/VirtualKeySettings;->RightImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/exsettings/VirtualKeySettings$1;

    invoke-direct {v1, p0}, Lcom/android/exsettings/VirtualKeySettings$1;-><init>(Lcom/android/exsettings/VirtualKeySettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/android/exsettings/VirtualKeySettings;->LeftImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/exsettings/VirtualKeySettings$2;

    invoke-direct {v1, p0}, Lcom/android/exsettings/VirtualKeySettings$2;-><init>(Lcom/android/exsettings/VirtualKeySettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/android/exsettings/VirtualKeySettings;->mLeftchoose:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 125
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 56
    const/16 v0, 0x57

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 6
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    const v5, 0x7f120243

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    if-ne p2, v5, :cond_0

    move v0, v1

    .line 132
    .local v0, "leftback":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 133
    iget-object v2, p0, Lcom/android/exsettings/VirtualKeySettings;->RightImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/exsettings/VirtualKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02021a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    iget-object v2, p0, Lcom/android/exsettings/VirtualKeySettings;->LeftImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/exsettings/VirtualKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v2, p0, Lcom/android/exsettings/VirtualKeySettings;->mLeftchoose:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/exsettings/VirtualKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "virtual_key_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    :goto_1
    return-void

    .end local v0    # "leftback":Z
    :cond_0
    move v0, v2

    .line 129
    goto :goto_0

    .line 139
    .restart local v0    # "leftback":Z
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/VirtualKeySettings;->RightImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/exsettings/VirtualKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v1, p0, Lcom/android/exsettings/VirtualKeySettings;->LeftImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/exsettings/VirtualKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0201ff

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v1, p0, Lcom/android/exsettings/VirtualKeySettings;->mLeftchoose:Landroid/widget/RadioGroup;

    const v3, 0x7f120242

    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 142
    invoke-virtual {p0}, Lcom/android/exsettings/VirtualKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "virtual_key_setting"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    const v1, 0x7f040131

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "mView":Landroid/view/View;
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 99
    invoke-direct {p0}, Lcom/android/exsettings/VirtualKeySettings;->loadFromSettings()V

    .line 100
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f120243

    const v4, 0x7f120242

    const/4 v0, 0x1

    .line 73
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    const v1, 0x7f120241

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/exsettings/VirtualKeySettings;->mLeftchoose:Landroid/widget/RadioGroup;

    .line 75
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/exsettings/VirtualKeySettings;->mLeftBackButton:Landroid/widget/RadioButton;

    .line 76
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/exsettings/VirtualKeySettings;->mRightBackButton:Landroid/widget/RadioButton;

    .line 79
    const v1, 0x7f12023e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/exsettings/VirtualKeySettings;->RightImage:Landroid/widget/ImageView;

    .line 80
    const v1, 0x7f120240

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/exsettings/VirtualKeySettings;->LeftImage:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {p0}, Lcom/android/exsettings/VirtualKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "virtual_key_setting"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    .local v0, "leftback":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/exsettings/VirtualKeySettings;->RightImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/exsettings/VirtualKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02021a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v1, p0, Lcom/android/exsettings/VirtualKeySettings;->LeftImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/exsettings/VirtualKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    iget-object v1, p0, Lcom/android/exsettings/VirtualKeySettings;->mLeftchoose:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 94
    :goto_1
    return-void

    .line 82
    .end local v0    # "leftback":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    .restart local v0    # "leftback":Z
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/VirtualKeySettings;->RightImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/exsettings/VirtualKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v1, p0, Lcom/android/exsettings/VirtualKeySettings;->LeftImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/exsettings/VirtualKeySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v1, p0, Lcom/android/exsettings/VirtualKeySettings;->mLeftchoose:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1
.end method
