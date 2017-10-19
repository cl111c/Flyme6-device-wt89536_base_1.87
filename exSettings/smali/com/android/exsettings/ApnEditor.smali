.class public Lcom/android/exsettings/ApnEditor;
.super Lcom/android/exsettings/InstrumentedPreferenceActivity;
.source "ApnEditor.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnDisable:Z

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearerInitialVal:I

.field private mBearerMulti:Landroid/preference/MultiSelectListPreference;

.field private mCarrierEnabled:Landroid/preference/SwitchPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDisableEditor:Z

.field private mFirstTime:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mMvnoMatchData:Landroid/preference/EditTextPreference;

.field private mMvnoMatchDataStr:Ljava/lang/String;

.field private mMvnoType:Landroid/preference/ListPreference;

.field private mMvnoTypeStr:Ljava/lang/String;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mPppNumber:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mSubId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const-class v0, Lcom/android/exsettings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    .line 115
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "bearer_bitmask"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mvno_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "mvno_match_data"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "ppp_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exsettings/ApnEditor;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;-><init>()V

    .line 98
    iput-boolean v0, p0, Lcom/android/exsettings/ApnEditor;->mDisableEditor:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/exsettings/ApnEditor;->mApnDisable:Z

    .line 108
    iput v0, p0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    return-void
.end method

.method private bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "raw":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f0a0030

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 476
    .local v6, "values":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .local v4, "retVal":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 478
    .local v2, "first":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 479
    .local v0, "bearer":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/MultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 481
    .local v1, "bearerIndex":I
    if-eqz v2, :cond_0

    .line 482
    :try_start_0
    aget-object v7, v6, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const/4 v2, 0x0

    goto :goto_0

    .line 485
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v7

    goto :goto_0

    .line 491
    .end local v0    # "bearer":Ljava/lang/String;
    .end local v1    # "bearerIndex":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, "val":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 495
    .end local v5    # "val":Ljava/lang/String;
    :goto_1
    return-object v5

    .restart local v5    # "val":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 831
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/exsettings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 832
    :cond_0
    const-string p1, ""

    .line 834
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 823
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 824
    :cond_0
    sget-object p1, Lcom/android/exsettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 826
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private deleteApn()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 806
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 807
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->finish()V

    .line 808
    return-void
.end method

.method private fillUi()V
    .locals 23

    .prologue
    .line 277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/ApnEditor;->mFirstTime:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 278
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/ApnEditor;->mFirstTime:Z

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/ApnEditor;->mSubId:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/telephony/TelephonyManager;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v16

    .line 281
    .local v16, "numeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x6

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x7

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0xc

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0xd

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x9

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0xa

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0xf

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 296
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 298
    const/16 v20, 0x0

    const/16 v21, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 300
    .local v13, "mcc":Ljava/lang/String;
    const/16 v20, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 302
    .local v15, "mnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/exsettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    .line 305
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/exsettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    .line 308
    .end local v13    # "mcc":Ljava/lang/String;
    .end local v15    # "mnc":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0xe

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 309
    .local v4, "authVal":I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v4, v0, :cond_9

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 315
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f10001a

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 322
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v22, 0x11

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const/16 v20, 0x1

    :goto_2
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x12

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    .line 325
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 326
    .local v7, "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x13

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 327
    .local v6, "bearerBitmask":I
    if-nez v6, :cond_c

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 329
    const-string v20, "0"

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    move/from16 v20, v0

    if-eqz v20, :cond_2

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 344
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x15

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x16

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 356
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x17

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 357
    .local v18, "pppNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 358
    if-nez v18, :cond_4

    .line 359
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    move/from16 v20, v0

    if-nez v20, :cond_e

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/exsettings/ApnSettings;->getLocalizedName(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v12

    .line 367
    .local v12, "localizedName":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 373
    .end local v4    # "authVal":I
    .end local v6    # "bearerBitmask":I
    .end local v7    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v12    # "localizedName":Ljava/lang/String;
    .end local v16    # "numeric":Ljava/lang/String;
    .end local v18    # "pppNumber":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v18

    .line 388
    .restart local v18    # "pppNumber":Ljava/lang/String;
    if-eqz v18, :cond_6

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 394
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "authVal":Ljava/lang/String;
    if-eqz v4, :cond_f

    .line 396
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 397
    .local v5, "authValIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    move-object/from16 v20, v0

    const v21, 0x7f0a002c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .line 400
    .local v19, "values":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    aget-object v21, v19, v5

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 405
    .end local v5    # "authValIndex":I
    .end local v19    # "values":[Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/exsettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f100027

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 416
    .local v8, "ceEditable":Z
    if-eqz v8, :cond_10

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 422
    :goto_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 423
    .local v14, "mccMnc":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0077

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/String;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_6
    if-ge v10, v11, :cond_7

    aget-object v17, v3, v10

    .line 424
    .local v17, "plmn":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    move/from16 v20, v0

    if-nez v20, :cond_11

    .line 425
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/exsettings/ApnEditor;->mApnDisable:Z

    .line 426
    sget-object v20, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v21, "APN is China Telecom\'s."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    .end local v17    # "plmn":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/ApnEditor;->mDisableEditor:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 431
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exsettings/ApnEditor;->mApnDisable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 433
    sget-object v20, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v21, "Apn Name can\'t be edited."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_8
    :goto_7
    return-void

    .line 312
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v8    # "ceEditable":Z
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v14    # "mccMnc":Ljava/lang/String;
    .end local v18    # "pppNumber":Ljava/lang/String;
    .local v4, "authVal":I
    .restart local v16    # "numeric":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x10

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v21, v0

    const/16 v22, 0x14

    invoke-interface/range {v21 .. v22}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 322
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 332
    .restart local v6    # "bearerBitmask":I
    .restart local v7    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_c
    const/4 v9, 0x1

    .line 333
    .local v9, "i":I
    :goto_8
    if-eqz v6, :cond_1

    .line 334
    and-int/lit8 v20, v6, 0x1

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 335
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_d
    shr-int/lit8 v6, v6, 0x1

    .line 338
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 361
    .end local v9    # "i":I
    .restart local v18    # "pppNumber":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f100029

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 402
    .end local v6    # "bearerBitmask":I
    .end local v7    # "bearers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v16    # "numeric":Ljava/lang/String;
    .local v4, "authVal":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/exsettings/ApnEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 419
    .restart local v8    # "ceEditable":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exsettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 423
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v14    # "mccMnc":Ljava/lang/String;
    .restart local v17    # "plmn":Ljava/lang/String;
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 435
    .end local v17    # "plmn":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 436
    sget-object v20, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v21, "ApnEditor form is disabled."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 756
    const/4 v1, 0x0

    .line 758
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 759
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "apn":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, "mcc":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 763
    .local v3, "mnc":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_1

    .line 764
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0493

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 773
    :cond_0
    :goto_0
    return-object v1

    .line 765
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v6, :cond_2

    .line 766
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0494

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 767
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 768
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0495

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 769
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const v6, 0xfffe

    and-int/2addr v5, v6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 770
    iget-object v5, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0c0496

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private mvnoDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 499
    iget-object v6, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v6, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 500
    .local v1, "mvnoIndex":I
    iget-object v6, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "oldValue":Ljava/lang/String;
    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    .line 530
    :goto_0
    return-object v5

    .line 505
    :cond_0
    iget-object v6, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f0a0032

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, "values":[Ljava/lang/String;
    aget-object v6, v4, v1

    const-string v7, "None"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 507
    iget-object v6, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 511
    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 512
    aget-object v6, v4, v1

    const-string v7, "SPN"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 513
    iget-object v6, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 528
    :cond_1
    :goto_2
    :try_start_0
    aget-object v5, v4, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 509
    :cond_2
    iget-object v6, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_1

    .line 514
    :cond_3
    aget-object v6, v4, v1

    const-string v7, "IMSI"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 515
    iget-object v6, p0, Lcom/android/exsettings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v7, p0, Lcom/android/exsettings/ApnEditor;->mSubId:I

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getIccOperatorNumericForData(I)Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "numeric":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 517
    .end local v2    # "numeric":Ljava/lang/String;
    :cond_4
    aget-object v6, v4, v1

    const-string v7, "GID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 518
    iget-object v6, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 519
    :cond_5
    aget-object v6, v4, v1

    const-string v7, "ICCID"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 520
    iget-object v6, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 521
    sget-object v6, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mMvnoMatchDataStr: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v6, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    .line 529
    :catch_0
    move-exception v0

    .line 530
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto/16 :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .param p1, "raw"    # Ljava/lang/String;
    .param p2, "protocol"    # Landroid/preference/ListPreference;

    .prologue
    const/4 v3, 0x0

    .line 447
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 448
    .local v1, "protocolIndex":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 455
    :goto_0
    return-object v3

    .line 451
    :cond_0
    iget-object v4, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 453
    .local v2, "values":[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 811
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 812
    :cond_0
    sget-object v2, Lcom/android/exsettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 818
    :goto_0
    return-object v2

    .line 814
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 815
    .local v1, "password":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 816
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 815
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 818
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 17
    .param p1, "force"    # Z

    .prologue
    .line 652
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/exsettings/ApnEditor;->mDisableEditor:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/exsettings/ApnEditor;->mApnDisable:Z

    if-nez v13, :cond_0

    .line 653
    sget-object v13, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v14, "Form is disabled. Nothing to save."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v13, 0x1

    .line 752
    :goto_0
    return v13

    .line 657
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 658
    .local v10, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "apn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 660
    .local v8, "mcc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 662
    .local v9, "mnc":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    if-nez p1, :cond_1

    .line 663
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/exsettings/ApnEditor;->showDialog(I)V

    .line 664
    const/4 v13, 0x0

    goto :goto_0

    .line 667
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-nez v13, :cond_2

    .line 668
    sget-object v13, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v14, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v13, 0x0

    goto :goto_0

    .line 674
    :cond_2
    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    if-eqz v13, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_3

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 676
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 679
    :cond_3
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 683
    .local v12, "values":Landroid/content/ContentValues;
    const-string v13, "name"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    if-ge v14, v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c07f7

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .end local v10    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v13, "apn"

    invoke-virtual {v12, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v13, "proxy"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string v13, "port"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string v13, "mmsproxy"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const-string v13, "mmsport"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v13, "user"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v13, "server"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v13, "password"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v13, "mmsc"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v13}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 696
    .local v2, "authVal":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 697
    const-string v13, "authtype"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 700
    :cond_5
    const-string v13, "protocol"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v13, "roaming_protocol"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v13, "type"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v13, "mcc"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v13, "mnc"

    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v13, "numeric"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    .line 711
    .local v11, "pppNumber":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c047b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    if-eqz v13, :cond_7

    .line 716
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 717
    const-string v13, "current"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v13}, Landroid/preference/MultiSelectListPreference;->getValues()Ljava/util/Set;

    move-result-object v5

    .line 722
    .local v5, "bearerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 723
    .local v4, "bearerBitmask":I
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 724
    .local v3, "bearer":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_a

    .line 725
    const/4 v4, 0x0

    .line 731
    .end local v3    # "bearer":Ljava/lang/String;
    :cond_8
    const-string v13, "bearer_bitmask"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 734
    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    if-nez v13, :cond_b

    .line 735
    :cond_9
    const/4 v6, 0x0

    .line 744
    .local v6, "bearerVal":I
    :goto_2
    const-string v13, "bearer"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    const-string v13, "mvno_type"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v14}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v13, "mvno_match_data"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    invoke-virtual {v14}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/exsettings/ApnEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v14, "carrier_enabled"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/exsettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v13}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x1

    :goto_3
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 750
    invoke-virtual/range {p0 .. p0}, Lcom/android/exsettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v12, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 752
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 728
    .end local v6    # "bearerVal":I
    .restart local v3    # "bearer":Ljava/lang/String;
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v13

    or-int/2addr v4, v13

    .line 730
    goto/16 :goto_1

    .line 736
    .end local v3    # "bearer":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    invoke-static {v4, v13}, Landroid/telephony/ServiceState;->bitmaskHasTech(II)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 737
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/exsettings/ApnEditor;->mBearerInitialVal:I

    .restart local v6    # "bearerVal":I
    goto :goto_2

    .line 742
    .end local v6    # "bearerVal":I
    :cond_c
    const/4 v6, 0x0

    .restart local v6    # "bearerVal":I
    goto :goto_2

    .line 749
    :cond_d
    const/4 v13, 0x0

    goto :goto_3
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 259
    const/16 v0, 0xd

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 170
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    const v2, 0x7f080008

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->addPreferencesFromResource(I)V

    .line 174
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0c0465

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/exsettings/ApnEditor;->sNotSet:Ljava/lang/String;

    .line 175
    const-string v2, "apn_name"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mName:Landroid/preference/EditTextPreference;

    .line 176
    const-string v2, "apn_apn"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mApn:Landroid/preference/EditTextPreference;

    .line 177
    const-string v2, "apn_http_proxy"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mProxy:Landroid/preference/EditTextPreference;

    .line 178
    const-string v2, "apn_http_port"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mPort:Landroid/preference/EditTextPreference;

    .line 179
    const-string v2, "apn_user"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mUser:Landroid/preference/EditTextPreference;

    .line 180
    const-string v2, "apn_server"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mServer:Landroid/preference/EditTextPreference;

    .line 181
    const-string v2, "apn_password"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    .line 182
    const-string v2, "apn_mms_proxy"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 183
    const-string v2, "apn_mms_port"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 184
    const-string v2, "apn_mmsc"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mMmsc:Landroid/preference/EditTextPreference;

    .line 185
    const-string v2, "apn_mcc"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mMcc:Landroid/preference/EditTextPreference;

    .line 186
    const-string v2, "apn_mnc"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mMnc:Landroid/preference/EditTextPreference;

    .line 187
    const-string v2, "apn_type"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mApnType:Landroid/preference/EditTextPreference;

    .line 188
    const-string v2, "apn_ppp_number"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mPppNumber:Landroid/preference/EditTextPreference;

    .line 190
    const-string v2, "auth_type"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    .line 191
    iget-object v2, p0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    const-string v2, "apn_protocol"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    .line 194
    iget-object v2, p0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    const-string v2, "apn_roaming_protocol"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 197
    iget-object v2, p0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 199
    const-string v2, "carrier_enabled"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    .line 201
    const-string v2, "bearer_multi"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/MultiSelectListPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    .line 202
    iget-object v2, p0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/MultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 204
    const-string v2, "mvno_type"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    .line 205
    iget-object v2, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 206
    const-string v2, "mvno_match_data"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;

    .line 208
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    .line 210
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 211
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "action":Ljava/lang/String;
    const-string v2, "sub_id"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/exsettings/ApnEditor;->mSubId:I

    .line 214
    const-string v2, "DISABLE_EDITOR"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exsettings/ApnEditor;->mDisableEditor:Z

    .line 216
    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/exsettings/ApnEditor;->mFirstTime:Z

    .line 218
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 249
    :goto_1
    iget-object v2, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/exsettings/ApnEditor;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v7, v7}, Lcom/android/exsettings/ApnEditor;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    .line 250
    iget-object v2, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 252
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/exsettings/ApnEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 254
    invoke-direct {p0}, Lcom/android/exsettings/ApnEditor;->fillUi()V

    .line 255
    :goto_2
    return-void

    :cond_0
    move v2, v4

    .line 216
    goto :goto_0

    .line 220
    :cond_1
    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 221
    iget-boolean v2, p0, Lcom/android/exsettings/ApnEditor;->mFirstTime:Z

    if-nez v2, :cond_2

    const-string v2, "pos"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 222
    :cond_2
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    .line 227
    :goto_3
    iput-boolean v3, p0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    .line 228
    const-string v2, "mvno_type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mMvnoTypeStr:Ljava/lang/String;

    .line 229
    const-string v2, "mvno_match_data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mMvnoMatchDataStr:Ljava/lang/String;

    .line 233
    iget-object v2, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_4

    .line 234
    sget-object v2, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to insert new telephony provider into "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->finish()V

    goto :goto_2

    .line 224
    :cond_3
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "pos"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    goto :goto_3

    .line 242
    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v6, v2}, Lcom/android/exsettings/ApnEditor;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_1

    .line 245
    :cond_5
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->finish()V

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 779
    if-nez p1, :cond_0

    .line 780
    invoke-direct {p0}, Lcom/android/exsettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 782
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0492

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 789
    .end local v0    # "msg":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 582
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 583
    iget-boolean v0, p0, Lcom/android/exsettings/ApnEditor;->mDisableEditor:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exsettings/ApnEditor;->mApnDisable:Z

    if-nez v0, :cond_0

    .line 584
    sget-object v0, Lcom/android/exsettings/ApnEditor;->TAG:Ljava/lang/String;

    const-string v1, "Form is disabled. Do not create the options menu."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :goto_0
    return v3

    .line 588
    :cond_0
    iget-boolean v0, p0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/exsettings/ApnEditor;->mDisableEditor:Z

    if-nez v0, :cond_1

    .line 589
    const v0, 0x7f0c048e

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020117

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 592
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f0c0490

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 594
    const/4 v0, 0x3

    const v1, 0x7f0c0491

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 622
    packed-switch p1, :pswitch_data_0

    .line 630
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 624
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/exsettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->finish()V

    .line 627
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 601
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 617
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 603
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exsettings/ApnEditor;->deleteApn()V

    goto :goto_0

    .line 606
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/exsettings/ApnEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->finish()V

    goto :goto_0

    .line 611
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/exsettings/ApnEditor;->mNewApn:Z

    if-eqz v1, :cond_1

    .line 612
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exsettings/ApnEditor;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 614
    :cond_1
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->finish()V

    goto :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 273
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onPause()V

    .line 274
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 536
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 537
    .local v3, "key":Ljava/lang/String;
    const-string v7, "auth_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 539
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 540
    .local v2, "index":I
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 542
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a002c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 543
    .local v6, "values":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mAuthType:Landroid/preference/ListPreference;

    aget-object v9, v6, v2

    invoke-virtual {v7, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v2    # "index":I
    .end local v6    # "values":[Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 544
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    move v7, v8

    .line 545
    goto :goto_1

    .line 547
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    const-string v7, "apn_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, p2

    .line 548
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/exsettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 549
    .local v5, "protocol":Ljava/lang/String;
    if-nez v5, :cond_2

    move v7, v8

    .line 550
    goto :goto_1

    .line 552
    :cond_2
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 553
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 554
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const-string v7, "apn_roaming_protocol"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 555
    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v7, v9}, Lcom/android/exsettings/ApnEditor;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 556
    .restart local v5    # "protocol":Ljava/lang/String;
    if-nez v5, :cond_4

    move v7, v8

    .line 557
    goto :goto_1

    .line 559
    :cond_4
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 560
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v7, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 561
    .end local v5    # "protocol":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    const-string v7, "bearer_multi"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, p2

    .line 562
    check-cast v7, Ljava/util/Set;

    invoke-direct {p0, v7}, Lcom/android/exsettings/ApnEditor;->bearerMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "bearer":Ljava/lang/String;
    if-nez v0, :cond_6

    move v7, v8

    .line 564
    goto :goto_1

    .line 566
    :cond_6
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    check-cast p2, Ljava/util/Set;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 567
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v7, v0}, Landroid/preference/MultiSelectListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 568
    .end local v0    # "bearer":Ljava/lang/String;
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    const-string v7, "mvno_type"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, p2

    .line 569
    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/exsettings/ApnEditor;->mvnoDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 570
    .local v4, "mvno":Ljava/lang/String;
    if-nez v4, :cond_8

    move v7, v8

    .line 571
    goto :goto_1

    .line 573
    :cond_8
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v7, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 574
    iget-object v7, p0, Lcom/android/exsettings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;

    invoke-virtual {v7, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 794
    invoke-super {p0, p1, p2}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 796
    if-nez p1, :cond_0

    .line 797
    invoke-direct {p0}, Lcom/android/exsettings/ApnEditor;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 799
    .local v0, "msg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 800
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 803
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 264
    invoke-super {p0}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onResume()V

    .line 265
    invoke-virtual {p0}, Lcom/android/exsettings/ApnEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 267
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 635
    invoke-super {p0, p1}, Lcom/android/exsettings/InstrumentedPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 636
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/exsettings/ApnEditor;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 639
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/exsettings/ApnEditor;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 641
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 839
    invoke-virtual {p0, p2}, Lcom/android/exsettings/ApnEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 840
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 841
    iget-object v1, p0, Lcom/android/exsettings/ApnEditor;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 842
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/ApnEditor;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    iget-object v1, p0, Lcom/android/exsettings/ApnEditor;->mCarrierEnabled:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/exsettings/ApnEditor;->mBearerMulti:Landroid/preference/MultiSelectListPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 846
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exsettings/ApnEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
