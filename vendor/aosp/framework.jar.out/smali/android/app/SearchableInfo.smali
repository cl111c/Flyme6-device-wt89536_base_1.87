.class public final Landroid/app/SearchableInfo;
.super Ljava/lang/Object;
.source "SearchableInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchableInfo$ActionKeyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SearchableInfo"

.field private static final MD_LABEL_SEARCHABLE:Ljava/lang/String; = "android.app.searchable"

.field private static final MD_XML_ELEMENT_SEARCHABLE:Ljava/lang/String; = "searchable"

.field private static final MD_XML_ELEMENT_SEARCHABLE_ACTION_KEY:Ljava/lang/String; = "actionkey"

.field private static final SEARCH_MODE_BADGE_ICON:I = 0x8

.field private static final SEARCH_MODE_BADGE_LABEL:I = 0x4

.field private static final SEARCH_MODE_QUERY_REWRITE_FROM_DATA:I = 0x10

.field private static final SEARCH_MODE_QUERY_REWRITE_FROM_TEXT:I = 0x20

.field private static final VOICE_SEARCH_LAUNCH_RECOGNIZER:I = 0x4

.field private static final VOICE_SEARCH_LAUNCH_WEB_SEARCH:I = 0x2

.field private static final VOICE_SEARCH_SHOW_BUTTON:I = 0x1


# instance fields
.field private mActionKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/SearchableInfo$ActionKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoUrlDetect:Z

.field private final mHintId:I

.field private final mIconId:I

.field private final mIncludeInGlobalSearch:Z

.field private final mLabelId:I

.field private final mQueryAfterZeroResults:Z

.field private final mSearchActivity:Landroid/content/ComponentName;

.field private final mSearchButtonText:I

.field private final mSearchImeOptions:I

.field private final mSearchInputType:I

.field private final mSearchMode:I

.field private final mSettingsDescriptionId:I

.field private final mSuggestAuthority:Ljava/lang/String;

.field private final mSuggestIntentAction:Ljava/lang/String;

.field private final mSuggestIntentData:Ljava/lang/String;

.field private final mSuggestPath:Ljava/lang/String;

.field private final mSuggestProviderPackage:Ljava/lang/String;

.field private final mSuggestSelection:Ljava/lang/String;

.field private final mSuggestThreshold:I

.field private final mVoiceLanguageId:I

.field private final mVoiceLanguageModeId:I

.field private final mVoiceMaxResults:I

.field private final mVoicePromptTextId:I

.field private final mVoiceSearchMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 792
    new-instance v0, Landroid/app/SearchableInfo$1;

    invoke-direct {v0}, Landroid/app/SearchableInfo$1;-><init>()V

    sput-object v0, Landroid/app/SearchableInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V
    .locals 8
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "cName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    .line 311
    iput-object p3, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    .line 313
    sget-object v4, Lcom/android/internal/R$styleable;->Searchable:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 315
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    .line 316
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mLabelId:I

    .line 317
    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mHintId:I

    .line 318
    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mIconId:I

    .line 319
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    .line 321
    const/16 v4, 0xa

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    .line 324
    const/16 v4, 0x10

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    .line 326
    const/16 v4, 0x12

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    .line 328
    const/16 v4, 0x13

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    .line 330
    const/16 v4, 0x15

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    .line 333
    const/16 v4, 0x14

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    .line 335
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    .line 337
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    .line 339
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    .line 341
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    .line 343
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    .line 345
    const/16 v4, 0x11

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    .line 348
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    .line 351
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    .line 353
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    .line 355
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    .line 357
    const/16 v4, 0xf

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    .line 360
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 363
    const/4 v3, 0x0

    .line 364
    .local v3, "suggestProviderPackage":Ljava/lang/String;
    iget-object v4, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 366
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 367
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_0

    .line 368
    iget-object v3, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 371
    .end local v1    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    iput-object v3, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    .line 374
    iget v4, p0, Landroid/app/SearchableInfo;->mLabelId:I

    if-nez v4, :cond_1

    .line 375
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Search label must be a resource reference."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 377
    :cond_1
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object v4, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    .line 811
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mLabelId:I

    .line 812
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    .line 813
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mHintId:I

    .line 814
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    .line 815
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mIconId:I

    .line 816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    .line 817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    .line 819
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    .line 820
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    .line 821
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    .line 823
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    .line 824
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    .line 825
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    .line 826
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    .line 827
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    .line 828
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    .line 829
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    .line 831
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "count":I
    :goto_3
    if-lez v0, :cond_3

    .line 832
    new-instance v1, Landroid/app/SearchableInfo$ActionKeyInfo;

    invoke-direct {v1, p1, v4}, Landroid/app/SearchableInfo$ActionKeyInfo;-><init>(Landroid/os/Parcel;Landroid/app/SearchableInfo$1;)V

    invoke-direct {p0, v1}, Landroid/app/SearchableInfo;->addActionKey(Landroid/app/SearchableInfo$ActionKeyInfo;)V

    .line 831
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .end local v0    # "count":I
    :cond_0
    move v1, v3

    .line 819
    goto :goto_0

    :cond_1
    move v1, v3

    .line 820
    goto :goto_1

    :cond_2
    move v2, v3

    .line 821
    goto :goto_2

    .line 835
    .restart local v0    # "count":I
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    .line 837
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    .line 838
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    .line 839
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    .line 840
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    .line 842
    return-void
.end method

.method private addActionKey(Landroid/app/SearchableInfo$ActionKeyInfo;)V
    .locals 2
    .param p1, "keyInfo"    # Landroid/app/SearchableInfo$ActionKeyInfo;

    .prologue
    .line 500
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    .line 503
    :cond_0
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    return-void
.end method

.method private static createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 260
    const/4 v1, 0x0

    .line 262
    .local v1, "theirContext":Landroid/content/Context;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 269
    :goto_0
    return-object v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SearchableInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "SearchableInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t make context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/app/SearchableInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 518
    const/4 v3, 0x0

    .line 520
    .local v3, "userContext":Landroid/content/Context;
    :try_start_0
    const-string/jumbo v5, "system"

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 527
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.app.searchable"

    invoke-virtual {p1, v5, v6}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 529
    .local v4, "xml":Landroid/content/res/XmlResourceParser;
    if-nez v4, :cond_0

    .line 551
    .end local v4    # "xml":Landroid/content/res/XmlResourceParser;
    :goto_0
    return-object v2

    .line 522
    :catch_0
    move-exception v1

    .line 523
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "SearchableInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t create package context for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 532
    .end local v1    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "xml":Landroid/content/res/XmlResourceParser;
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    .local v0, "cName":Landroid/content/ComponentName;
    invoke-static {v3, v4, v0}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 535
    .local v2, "searchable":Landroid/app/SearchableInfo;
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0
.end method

.method private static getActivityMetaData(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "cName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v7, 0x0

    .line 565
    const/4 v4, 0x0

    .line 566
    .local v4, "result":Landroid/app/SearchableInfo;
    invoke-static {p0, p2}, Landroid/app/SearchableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v0

    .line 567
    .local v0, "activityContext":Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v5, v7

    .line 613
    :goto_0
    return-object v5

    .line 572
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v6

    .local v6, "tagType":I
    move-object v5, v4

    .line 573
    .end local v4    # "result":Landroid/app/SearchableInfo;
    .local v5, "result":Landroid/app/SearchableInfo;
    :goto_1
    const/4 v8, 0x1

    if-eq v6, v8, :cond_3

    .line 574
    const/4 v8, 0x2

    if-ne v6, v8, :cond_4

    .line 575
    :try_start_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "searchable"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 576
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    .line 577
    .local v1, "attr":Landroid/util/AttributeSet;
    if-eqz v1, :cond_4

    .line 579
    :try_start_2
    new-instance v4, Landroid/app/SearchableInfo;

    invoke-direct {v4, v0, v1, p2}, Landroid/app/SearchableInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 603
    .end local v1    # "attr":Landroid/util/AttributeSet;
    .end local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v4    # "result":Landroid/app/SearchableInfo;
    :goto_2
    :try_start_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    move-object v5, v4

    .end local v4    # "result":Landroid/app/SearchableInfo;
    .restart local v5    # "result":Landroid/app/SearchableInfo;
    goto :goto_1

    .line 580
    .restart local v1    # "attr":Landroid/util/AttributeSet;
    :catch_0
    move-exception v3

    .line 581
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v8, "SearchableInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid searchable metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v4    # "result":Landroid/app/SearchableInfo;
    move-object v5, v7

    .line 583
    goto :goto_0

    .line 586
    .end local v1    # "attr":Landroid/util/AttributeSet;
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v4    # "result":Landroid/app/SearchableInfo;
    .restart local v5    # "result":Landroid/app/SearchableInfo;
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "actionkey"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 587
    if-nez v5, :cond_2

    move-object v4, v5

    .end local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v4    # "result":Landroid/app/SearchableInfo;
    move-object v5, v7

    .line 589
    goto :goto_0

    .line 591
    .end local v4    # "result":Landroid/app/SearchableInfo;
    .restart local v5    # "result":Landroid/app/SearchableInfo;
    :cond_2
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v1

    .line 592
    .restart local v1    # "attr":Landroid/util/AttributeSet;
    if-eqz v1, :cond_4

    .line 594
    :try_start_5
    new-instance v8, Landroid/app/SearchableInfo$ActionKeyInfo;

    invoke-direct {v8, v0, v1}, Landroid/app/SearchableInfo$ActionKeyInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {v5, v8}, Landroid/app/SearchableInfo;->addActionKey(Landroid/app/SearchableInfo$ActionKeyInfo;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v4, v5

    .line 599
    .end local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v4    # "result":Landroid/app/SearchableInfo;
    goto :goto_2

    .line 595
    .end local v4    # "result":Landroid/app/SearchableInfo;
    .restart local v5    # "result":Landroid/app/SearchableInfo;
    :catch_1
    move-exception v3

    .line 596
    .restart local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :try_start_6
    const-string v8, "SearchableInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid action key for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v4, v5

    .end local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v4    # "result":Landroid/app/SearchableInfo;
    move-object v5, v7

    .line 598
    goto/16 :goto_0

    .line 605
    .end local v1    # "attr":Landroid/util/AttributeSet;
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v6    # "tagType":I
    :catch_2
    move-exception v2

    .line 606
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    const-string v8, "SearchableInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reading searchable metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v7

    .line 607
    goto/16 :goto_0

    .line 608
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v2

    .line 609
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    const-string v8, "SearchableInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reading searchable metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v7

    .line 610
    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "result":Landroid/app/SearchableInfo;
    .restart local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v6    # "tagType":I
    :cond_3
    move-object v4, v5

    .line 613
    .end local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v4    # "result":Landroid/app/SearchableInfo;
    goto/16 :goto_0

    .line 608
    .end local v4    # "result":Landroid/app/SearchableInfo;
    .restart local v5    # "result":Landroid/app/SearchableInfo;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v4    # "result":Landroid/app/SearchableInfo;
    goto :goto_4

    .line 605
    .end local v4    # "result":Landroid/app/SearchableInfo;
    .restart local v5    # "result":Landroid/app/SearchableInfo;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v4    # "result":Landroid/app/SearchableInfo;
    goto :goto_3

    .end local v4    # "result":Landroid/app/SearchableInfo;
    .restart local v5    # "result":Landroid/app/SearchableInfo;
    :cond_4
    move-object v4, v5

    .end local v5    # "result":Landroid/app/SearchableInfo;
    .restart local v4    # "result":Landroid/app/SearchableInfo;
    goto/16 :goto_2
.end method


# virtual methods
.method public autoUrlDetect()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x0

    return v0
.end method

.method public findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 493
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 494
    const/4 v0, 0x0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchableInfo$ActionKeyInfo;

    goto :goto_0
.end method

.method public getActivityContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    invoke-static {p1, v0}, Landroid/app/SearchableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getHintId()I
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Landroid/app/SearchableInfo;->mHintId:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Landroid/app/SearchableInfo;->mIconId:I

    return v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 756
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 744
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    return v0
.end method

.method public getLabelId()I
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Landroid/app/SearchableInfo;->mLabelId:I

    return v0
.end method

.method public getProviderContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "theirContext":Landroid/content/Context;
    iget-object v1, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    .end local p2    # "activityContext":Landroid/content/Context;
    :goto_0
    return-object p2

    .line 286
    .restart local p2    # "activityContext":Landroid/content/Context;
    :cond_0
    iget-object v1, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 288
    :try_start_0
    iget-object v1, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    move-object p2, v0

    .line 295
    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    goto :goto_1

    .line 289
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public getSearchActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getSearchButtonText()I
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    return v0
.end method

.method public getSettingsDescriptionId()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    return v0
.end method

.method public getSuggestAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestIntentAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestIntentData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestThreshold()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    return v0
.end method

.method public getVoiceLanguageId()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    return v0
.end method

.method public getVoiceLanguageModeId()I
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    return v0
.end method

.method public getVoiceMaxResults()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    return v0
.end method

.method public getVoicePromptTextId()I
    .locals 1

    .prologue
    .line 699
    iget v0, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    return v0
.end method

.method public getVoiceSearchEnabled()Z
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceSearchLaunchRecognizer()Z
    .locals 1

    .prologue
    .line 677
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceSearchLaunchWebSearch()Z
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryAfterZeroResults()Z
    .locals 1

    .prologue
    .line 777
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    return v0
.end method

.method public shouldIncludeInGlobalSearch()Z
    .locals 1

    .prologue
    .line 767
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    return v0
.end method

.method public shouldRewriteQueryFromData()Z
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldRewriteQueryFromText()Z
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useBadgeIcon()Z
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/SearchableInfo;->mIconId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public useBadgeLabel()Z
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 849
    iget v2, p0, Landroid/app/SearchableInfo;->mLabelId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 851
    iget v2, p0, Landroid/app/SearchableInfo;->mHintId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    iget v2, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget v2, p0, Landroid/app/SearchableInfo;->mIconId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    iget v2, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    iget v2, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 856
    iget v2, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 857
    iget-boolean v2, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 858
    iget-boolean v2, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    iget-boolean v2, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    iget v2, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 863
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 864
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 865
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 866
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 867
    iget v2, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 869
    iget-object v2, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    if-nez v2, :cond_4

    .line 870
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 878
    :cond_0
    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 880
    iget v2, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    iget v2, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 882
    iget v2, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    iget v2, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    iget v2, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    return-void

    :cond_1
    move v2, v4

    .line 857
    goto :goto_0

    :cond_2
    move v2, v4

    .line 858
    goto :goto_1

    :cond_3
    move v3, v4

    .line 859
    goto :goto_2

    .line 872
    :cond_4
    iget-object v2, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    iget-object v2, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchableInfo$ActionKeyInfo;

    .line 874
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    invoke-virtual {v0, p1, p2}, Landroid/app/SearchableInfo$ActionKeyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3
.end method
