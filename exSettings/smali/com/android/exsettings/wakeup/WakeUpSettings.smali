.class public Lcom/android/exsettings/wakeup/WakeUpSettings;
.super Lcom/android/exsettings/SettingsPreferenceFragment;
.source "WakeUpSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;,
        Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;
    }
.end annotation


# static fields
.field public static gestureState:I


# instance fields
.field private final GESTURE_PK_KEY_C:Ljava/lang/String;

.field private final GESTURE_PK_KEY_DOUBLE_CLICK:Ljava/lang/String;

.field private final GESTURE_PK_KEY_DOWN_ARROW:Ljava/lang/String;

.field private final GESTURE_PK_KEY_E:Ljava/lang/String;

.field private final GESTURE_PK_KEY_M:Ljava/lang/String;

.field private final GESTURE_PK_KEY_O:Ljava/lang/String;

.field private final GESTURE_PK_KEY_S:Ljava/lang/String;

.field private final GESTURE_PK_KEY_UP_ARROW:Ljava/lang/String;

.field private final GESTURE_PK_KEY_W:Ljava/lang/String;

.field private final GESTURE_PK_KEY_Z:Ljava/lang/String;

.field private final GESTURE_STATE_KEY_C:Ljava/lang/String;

.field private final GESTURE_STATE_KEY_DOUBLE_CLICK:Ljava/lang/String;

.field private final GESTURE_STATE_KEY_DOWN_ARROW:Ljava/lang/String;

.field private final GESTURE_STATE_KEY_E:Ljava/lang/String;

.field private final GESTURE_STATE_KEY_M:Ljava/lang/String;

.field private final GESTURE_STATE_KEY_O:Ljava/lang/String;

.field private final GESTURE_STATE_KEY_S:Ljava/lang/String;

.field private final GESTURE_STATE_KEY_UP_ARROW:Ljava/lang/String;

.field private final GESTURE_STATE_KEY_W:Ljava/lang/String;

.field private final GESTURE_STATE_KEY_Z:Ljava/lang/String;

.field private cPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

.field private doubleClickPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

.field private downArrowPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

.field private ePreference:Lcom/android/exsettings/SwitchPreferenceOnly;

.field private gesture_c_state:Z

.field private gesture_double_click_state:Z

.field private gesture_down_arrow_state:Z

.field private gesture_e_state:Z

.field private gesture_m_state:Z

.field private gesture_o_state:Z

.field private gesture_s_state:Z

.field private gesture_up_arrow_state:Z

.field private gesture_w_state:Z

.field private gesture_z_state:Z

.field private mPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

.field private oPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

.field private sPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

.field private settings:Landroid/content/SharedPreferences;

.field private upArrowPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

.field private wPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

.field private zPreference:Lcom/android/exsettings/SwitchPreferenceOnly;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_c_state:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_e_state:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_w_state:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_m_state:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_o_state:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_s_state:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_z_state:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_up_arrow_state:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_down_arrow_state:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_double_click_state:Z

    .line 100
    const-string v0, "gesture_c_enable"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_STATE_KEY_C:Ljava/lang/String;

    .line 101
    const-string v0, "gesture_e_enable"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_STATE_KEY_E:Ljava/lang/String;

    .line 102
    const-string v0, "gesture_w_enable"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_STATE_KEY_W:Ljava/lang/String;

    .line 103
    const-string v0, "gesture_m_enable"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_STATE_KEY_M:Ljava/lang/String;

    .line 104
    const-string v0, "gesture_o_enable"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_STATE_KEY_O:Ljava/lang/String;

    .line 105
    const-string v0, "gesture_s_enable"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_STATE_KEY_S:Ljava/lang/String;

    .line 106
    const-string v0, "gesture_z_enable"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_STATE_KEY_Z:Ljava/lang/String;

    .line 107
    const-string v0, "gesture_up_arrow_enable"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_STATE_KEY_UP_ARROW:Ljava/lang/String;

    .line 108
    const-string v0, "gesture_down_arrow_enable"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_STATE_KEY_DOWN_ARROW:Ljava/lang/String;

    .line 110
    const-string v0, "gesture_double_click_enable"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_STATE_KEY_DOUBLE_CLICK:Ljava/lang/String;

    .line 117
    const-string v0, "pk_name_for_c"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_PK_KEY_C:Ljava/lang/String;

    .line 118
    const-string v0, "pk_name_for_e"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_PK_KEY_E:Ljava/lang/String;

    .line 119
    const-string v0, "pk_name_for_w"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_PK_KEY_W:Ljava/lang/String;

    .line 120
    const-string v0, "pk_name_for_m"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_PK_KEY_M:Ljava/lang/String;

    .line 121
    const-string v0, "pk_name_for_o"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_PK_KEY_O:Ljava/lang/String;

    .line 122
    const-string v0, "pk_name_for_s"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_PK_KEY_S:Ljava/lang/String;

    .line 123
    const-string v0, "pk_name_for_z"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_PK_KEY_Z:Ljava/lang/String;

    .line 124
    const-string v0, "pk_name_for_up_arrow"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_PK_KEY_UP_ARROW:Ljava/lang/String;

    .line 125
    const-string v0, "pk_name_for_down_arrow"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_PK_KEY_DOWN_ARROW:Ljava/lang/String;

    .line 127
    const-string v0, "pk_name_for_double_click"

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->GESTURE_PK_KEY_DOUBLE_CLICK:Ljava/lang/String;

    .line 420
    return-void
.end method

.method static synthetic access$000(Lcom/android/exsettings/wakeup/WakeUpSettings;Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/exsettings/wakeup/WakeUpSettings;
    .param p1, "x1"    # Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->setItem(Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;)V

    return-void
.end method

.method private initPreference()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 154
    const-string v0, "gesture_c"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->cPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 155
    const-string v0, "gesture_e"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->ePreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 156
    const-string v0, "gesture_w"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->wPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 157
    const-string v0, "gesture_m"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->mPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 158
    const-string v0, "gesture_o"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->oPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 159
    const-string v0, "gesture_s"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->sPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 160
    const-string v0, "gesture_z"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->zPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 161
    const-string v0, "gesture_up_arrow"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->upArrowPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 162
    const-string v0, "gesture_down_arrow"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->downArrowPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 164
    const-string v0, "gesture_double_click"

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/exsettings/SwitchPreferenceOnly;

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->doubleClickPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    .line 169
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->cPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->cPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->ePreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->ePreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->wPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->wPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->mPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->mPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->oPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->oPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->sPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->sPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->zPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 182
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->zPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->upArrowPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->upArrowPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->downArrowPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->downArrowPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->doubleClickPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 190
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->doubleClickPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    invoke-virtual {v0, p0}, Lcom/android/exsettings/SwitchPreferenceOnly;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gesture_c_enable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_c_state:Z

    .line 202
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gesture_e_enable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_e_state:Z

    .line 205
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gesture_w_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_w_state:Z

    .line 207
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gesture_m_enable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_m_state:Z

    .line 209
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gesture_o_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_o_state:Z

    .line 211
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gesture_s_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_s_state:Z

    .line 213
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gesture_z_enable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_z_state:Z

    .line 215
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gesture_up_arrow_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_up_arrow_state:Z

    .line 217
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gesture_down_arrow_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_down_arrow_state:Z

    .line 221
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "gesture_double_click_enable"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_9

    :goto_9
    iput-boolean v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_double_click_state:Z

    .line 232
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->cPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-boolean v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_c_state:Z

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    .line 233
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->ePreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-boolean v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_e_state:Z

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->wPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-boolean v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_w_state:Z

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->mPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-boolean v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_m_state:Z

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->oPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-boolean v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_o_state:Z

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    .line 237
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->sPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-boolean v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_s_state:Z

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->zPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-boolean v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_z_state:Z

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->upArrowPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-boolean v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_up_arrow_state:Z

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->downArrowPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-boolean v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_down_arrow_state:Z

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->doubleClickPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-boolean v1, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_double_click_state:Z

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setChecked(Z)V

    .line 248
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings_preferences"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->settings:Landroid/content/SharedPreferences;

    .line 250
    new-instance v0, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;

    invoke-direct {v0, p0}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;-><init>(Lcom/android/exsettings/wakeup/WakeUpSettings;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/wakeup/WakeUpSettings$LoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 251
    return-void

    :cond_0
    move v0, v2

    .line 200
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 202
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 205
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 207
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 209
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 211
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 213
    goto/16 :goto_6

    :cond_7
    move v0, v2

    .line 215
    goto/16 :goto_7

    :cond_8
    move v0, v2

    .line 217
    goto/16 :goto_8

    :cond_9
    move v1, v2

    .line 221
    goto :goto_9
.end method

.method private setItem(Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;

    .prologue
    .line 562
    iget v0, p1, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;->key:I

    packed-switch v0, :pswitch_data_0

    .line 609
    :goto_0
    :pswitch_0
    return-void

    .line 564
    :pswitch_1
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->cPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-object v1, p1, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 567
    :pswitch_2
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->ePreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-object v1, p1, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 570
    :pswitch_3
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->wPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-object v1, p1, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 573
    :pswitch_4
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->mPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-object v1, p1, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 576
    :pswitch_5
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->oPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-object v1, p1, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 579
    :pswitch_6
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->sPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-object v1, p1, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 582
    :pswitch_7
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->zPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-object v1, p1, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 585
    :pswitch_8
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->upArrowPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-object v1, p1, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 588
    :pswitch_9
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->downArrowPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-object v1, p1, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 594
    :pswitch_a
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->doubleClickPreference:Lcom/android/exsettings/SwitchPreferenceOnly;

    iget-object v1, p1, Lcom/android/exsettings/wakeup/WakeUpSettings$ItemInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/exsettings/SwitchPreferenceOnly;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method private showGestureDialog(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 402
    sput p1, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    .line 403
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/exsettings/wakeup/GestureTipActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "gesture_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 405
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 406
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 138
    const/16 v0, 0x10

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/exsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->addPreferencesFromResource(I)V

    .line 145
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    const-string v0, "gesture_c"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_c_state:Z

    .line 293
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_c_enable"

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_c_state:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 295
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->settings:Landroid/content/SharedPreferences;

    const-string v3, "c_tips"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_c_state:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0, v1}, Lcom/android/exsettings/wakeup/WakeUpSettings;->showGestureDialog(I)V

    .line 397
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 293
    goto :goto_0

    .line 298
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    const-string v0, "gesture_e"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 299
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_e_state:Z

    .line 300
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_e_enable"

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_e_state:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->settings:Landroid/content/SharedPreferences;

    const-string v3, "e_tips"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_e_state:Z

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->showGestureDialog(I)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 300
    goto :goto_2

    .line 305
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    const-string v0, "gesture_w"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 306
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_w_state:Z

    .line 307
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_w_enable"

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_w_state:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 309
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->settings:Landroid/content/SharedPreferences;

    const-string v3, "w_tips"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_w_state:Z

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->showGestureDialog(I)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 307
    goto :goto_3

    .line 312
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_6
    const-string v0, "gesture_m"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 313
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_m_state:Z

    .line 314
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_m_enable"

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_m_state:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->settings:Landroid/content/SharedPreferences;

    const-string v3, "m_tips"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_m_state:Z

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->showGestureDialog(I)V

    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 314
    goto :goto_4

    .line 319
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_8
    const-string v0, "gesture_o"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 320
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_o_state:Z

    .line 321
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_o_enable"

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_o_state:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_5
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->settings:Landroid/content/SharedPreferences;

    const-string v3, "o_tips"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_o_state:Z

    if-eqz v0, :cond_0

    .line 324
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->showGestureDialog(I)V

    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 321
    goto :goto_5

    .line 326
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_a
    const-string v0, "gesture_s"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 327
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_s_state:Z

    .line 328
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_s_enable"

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_s_state:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_6
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->settings:Landroid/content/SharedPreferences;

    const-string v3, "s_tips"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_s_state:Z

    if-eqz v0, :cond_0

    .line 331
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->showGestureDialog(I)V

    goto/16 :goto_1

    :cond_b
    move v0, v2

    .line 328
    goto :goto_6

    .line 333
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_c
    const-string v0, "gesture_z"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 334
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_z_state:Z

    .line 335
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_z_enable"

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_z_state:Z

    if-eqz v0, :cond_d

    move v0, v1

    :goto_7
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 337
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->settings:Landroid/content/SharedPreferences;

    const-string v3, "z_tips"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_z_state:Z

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->showGestureDialog(I)V

    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 335
    goto :goto_7

    .line 340
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_e
    const-string v0, "gesture_up_arrow"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 341
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_up_arrow_state:Z

    .line 342
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_up_arrow_enable"

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_up_arrow_state:Z

    if-eqz v0, :cond_f

    move v0, v1

    :goto_8
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->settings:Landroid/content/SharedPreferences;

    const-string v3, "up_arrow_tips"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_up_arrow_state:Z

    if-eqz v0, :cond_0

    .line 345
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->showGestureDialog(I)V

    goto/16 :goto_1

    :cond_f
    move v0, v2

    .line 342
    goto :goto_8

    .line 347
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_10
    const-string v0, "gesture_down_arrow"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 348
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_down_arrow_state:Z

    .line 349
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_down_arrow_enable"

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_down_arrow_state:Z

    if-eqz v0, :cond_11

    move v0, v1

    :goto_9
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->settings:Landroid/content/SharedPreferences;

    const-string v3, "down_arrow_tips"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_down_arrow_state:Z

    if-eqz v0, :cond_0

    .line 352
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->showGestureDialog(I)V

    goto/16 :goto_1

    :cond_11
    move v0, v2

    .line 349
    goto :goto_9

    .line 361
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_12
    const-string v0, "gesture_double_click"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_double_click_state:Z

    .line 363
    invoke-virtual {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_double_click_enable"

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_double_click_state:Z

    if-eqz v0, :cond_13

    move v0, v1

    :goto_a
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 365
    iget-object v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->settings:Landroid/content/SharedPreferences;

    const-string v3, "double_click_tips"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gesture_double_click_state:Z

    if-eqz v0, :cond_0

    .line 366
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->showGestureDialog(I)V

    goto/16 :goto_1

    :cond_13
    move v0, v2

    .line 363
    goto :goto_a
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 255
    const-string v0, "gesture_c"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    const/4 v0, 0x1

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    .line 286
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 257
    :cond_1
    const-string v0, "gesture_e"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    const/4 v0, 0x2

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    goto :goto_0

    .line 259
    :cond_2
    const-string v0, "gesture_w"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    const/4 v0, 0x3

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    goto :goto_0

    .line 261
    :cond_3
    const-string v0, "gesture_m"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 262
    const/4 v0, 0x4

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    goto :goto_0

    .line 263
    :cond_4
    const-string v0, "gesture_o"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 264
    const/4 v0, 0x5

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    goto :goto_0

    .line 265
    :cond_5
    const-string v0, "gesture_s"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 266
    const/4 v0, 0x6

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    goto :goto_0

    .line 267
    :cond_6
    const-string v0, "gesture_z"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 268
    const/4 v0, 0x7

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    goto :goto_0

    .line 269
    :cond_7
    const-string v0, "gesture_up_arrow"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 270
    const/16 v0, 0x8

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    goto :goto_0

    .line 271
    :cond_8
    const-string v0, "gesture_down_arrow"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 272
    const/16 v0, 0x9

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    goto/16 :goto_0

    .line 273
    :cond_9
    const-string v0, "gesture_right_arrow"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 274
    const/16 v0, 0xa

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    goto/16 :goto_0

    .line 275
    :cond_a
    const-string v0, "gesture_double_click"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 276
    const/16 v0, 0xb

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    goto/16 :goto_0

    .line 277
    :cond_b
    const-string v0, "gesture_scroll_up"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 278
    const/16 v0, 0xc

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    goto/16 :goto_0

    .line 279
    :cond_c
    const-string v0, "gesture_scroll_down"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 280
    const/16 v0, 0xd

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    goto/16 :goto_0

    .line 281
    :cond_d
    const-string v0, "gesture_scroll_left"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 282
    const/16 v0, 0xe

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    goto/16 :goto_0

    .line 283
    :cond_e
    const-string v0, "gesture_scroll_right"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const/16 v0, 0xf

    sput v0, Lcom/android/exsettings/wakeup/WakeUpSettings;->gestureState:I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/exsettings/SettingsPreferenceFragment;->onResume()V

    .line 150
    invoke-direct {p0}, Lcom/android/exsettings/wakeup/WakeUpSettings;->initPreference()V

    .line 151
    return-void
.end method
