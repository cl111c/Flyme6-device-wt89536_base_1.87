.class public Lcom/android/exsettings/ColorAdjustSettings;
.super Landroid/app/Activity;
.source "ColorAdjustSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;,
        Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper;
    }
.end annotation


# instance fields
.field private mCeMode:I

.field private mGammaMode:I

.field private mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput v0, p0, Lcom/android/exsettings/ColorAdjustSettings;->mGammaMode:I

    .line 41
    iput v0, p0, Lcom/android/exsettings/ColorAdjustSettings;->mCeMode:I

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/ColorAdjustSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ColorAdjustSettings;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/exsettings/ColorAdjustSettings;->mGammaMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/exsettings/ColorAdjustSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/ColorAdjustSettings;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/exsettings/ColorAdjustSettings;->setGammaMode(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exsettings/ColorAdjustSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/exsettings/ColorAdjustSettings;

    .prologue
    .line 26
    iget v0, p0, Lcom/android/exsettings/ColorAdjustSettings;->mCeMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/exsettings/ColorAdjustSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/ColorAdjustSettings;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/exsettings/ColorAdjustSettings;->setCeMode(I)V

    return-void
.end method

.method private saveCeModeValue(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/android/exsettings/ColorAdjustSettings;->mCeMode:I

    .line 203
    iget-object v1, p0, Lcom/android/exsettings/ColorAdjustSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 204
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ColorAdjustSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[saveCeModeValue] CeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v1, "ce_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 207
    return-void
.end method

.method private saveGammaModeValue(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 194
    iput p1, p0, Lcom/android/exsettings/ColorAdjustSettings;->mGammaMode:I

    .line 195
    iget-object v1, p0, Lcom/android/exsettings/ColorAdjustSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 196
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ColorAdjustSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[saveGammaModeValue] GammaMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v1, "gamma_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 199
    return-void
.end method

.method private setCeMode(I)V
    .locals 4
    .param p1, "cemode"    # I

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "ceValue":I
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/exsettings/ColorAdjustSettings;->saveCeModeValue(I)V

    .line 189
    const-string v1, "ColorAdjustSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setCeMode] cemode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ceValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v1, "persist.sys.display_ce"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    .line 179
    :pswitch_0
    const/16 v0, 0xa

    .line 180
    goto :goto_0

    .line 182
    :pswitch_1
    const/16 v0, 0xb

    .line 183
    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setGammaMode(I)V
    .locals 4
    .param p1, "gammamode"    # I

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "gammaValue":I
    packed-switch p1, :pswitch_data_0

    .line 169
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/exsettings/ColorAdjustSettings;->saveGammaModeValue(I)V

    .line 171
    const-string v1, "ColorAdjustSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setGammaMode] gammamode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gammaValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v1, "persist.sys.display_prefer"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void

    .line 158
    :pswitch_0
    const/4 v0, 0x1

    .line 159
    goto :goto_0

    .line 161
    :pswitch_1
    const/4 v0, 0x3

    .line 162
    goto :goto_0

    .line 164
    :pswitch_2
    const/4 v0, 0x2

    .line 165
    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f040028

    const/4 v9, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/exsettings/ColorAdjustSettings;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/Window;->requestFeature(I)Z

    .line 51
    const v6, 0x7f040027

    invoke-virtual {p0, v6}, Lcom/android/exsettings/ColorAdjustSettings;->setContentView(I)V

    .line 52
    const v6, 0x7f120049

    invoke-virtual {p0, v6}, Lcom/android/exsettings/ColorAdjustSettings;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    .line 53
    .local v5, "gammalistView":Landroid/widget/ListView;
    const v6, 0x7f12004a

    invoke-virtual {p0, v6}, Lcom/android/exsettings/ColorAdjustSettings;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 57
    .local v2, "celistView":Landroid/widget/ListView;
    const-string v6, "ColorAdjust_string_name"

    invoke-virtual {p0, v6, v9}, Lcom/android/exsettings/ColorAdjustSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/android/exsettings/ColorAdjustSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 58
    iget-object v6, p0, Lcom/android/exsettings/ColorAdjustSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v7, "gamma_mode"

    const/4 v8, 0x2

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/exsettings/ColorAdjustSettings;->mGammaMode:I

    .line 59
    iget-object v6, p0, Lcom/android/exsettings/ColorAdjustSettings;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v7, "ce_mode"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/exsettings/ColorAdjustSettings;->mCeMode:I

    .line 60
    const-string v6, "ColorAdjustSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onCreate] mGammaMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exsettings/ColorAdjustSettings;->mGammaMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCeMode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/exsettings/ColorAdjustSettings;->mCeMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget v6, p0, Lcom/android/exsettings/ColorAdjustSettings;->mGammaMode:I

    invoke-direct {p0, v6}, Lcom/android/exsettings/ColorAdjustSettings;->setGammaMode(I)V

    .line 62
    iget v6, p0, Lcom/android/exsettings/ColorAdjustSettings;->mCeMode:I

    invoke-direct {p0, v6}, Lcom/android/exsettings/ColorAdjustSettings;->setCeMode(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/exsettings/ColorAdjustSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a007c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "gammalist":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/exsettings/ColorAdjustSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a007d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "celist":[Ljava/lang/String;
    new-instance v3, Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper;

    invoke-direct {v3, p0, p0, v10, v4}, Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper;-><init>(Lcom/android/exsettings/ColorAdjustSettings;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 67
    .local v3, "gammaAdapter":Lcom/android/exsettings/ColorAdjustSettings$GammaModeAdaper;
    new-instance v0, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;

    invoke-direct {v0, p0, p0, v10, v1}, Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;-><init>(Lcom/android/exsettings/ColorAdjustSettings;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 68
    .local v0, "ceAdapter":Lcom/android/exsettings/ColorAdjustSettings$CeModeAdaper;
    invoke-virtual {v5, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "ColorAdjustSettings"

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 76
    return-void
.end method
