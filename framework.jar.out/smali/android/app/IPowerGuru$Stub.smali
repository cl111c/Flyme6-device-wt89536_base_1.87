.class public abstract Landroid/app/IPowerGuru$Stub;
.super Landroid/os/Binder;
.source "IPowerGuru.java"

# interfaces
.implements Landroid/app/IPowerGuru;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IPowerGuru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IPowerGuru$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IPowerGuru"

.field static final TRANSACTION_addWhiteAppfromList:I = 0x7

.field static final TRANSACTION_delWhiteAppfromList:I = 0x5

.field static final TRANSACTION_getBeatList:I = 0x3

.field static final TRANSACTION_getWhiteCandicateList:I = 0x6

.field static final TRANSACTION_getWhiteList:I = 0x4

.field static final TRANSACTION_notifyPowerguruAlarm:I = 0x2

.field static final TRANSACTION_testHello:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.app.IPowerGuru"

    invoke-virtual {p0, p0, v0}, Landroid/app/IPowerGuru$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IPowerGuru;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.app.IPowerGuru"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IPowerGuru;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/app/IPowerGuru;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/app/IPowerGuru$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/app/IPowerGuru$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 18
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 129
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    .line 47
    :sswitch_0
    const-string v2, "android.app.IPowerGuru"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v2, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "android.app.IPowerGuru"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/app/IPowerGuru$Stub;->testHello()V

    .line 54
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    const/4 v2, 0x1

    goto :goto_0

    .line 59
    :sswitch_2
    const-string v2, "android.app.IPowerGuru"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 63
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 65
    .local v4, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 67
    .local v6, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 69
    .local v8, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 71
    .local v10, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 73
    .local v12, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    .local v14, "_arg6":Landroid/app/PendingIntent;
    :goto_1
    move-object/from16 v2, p0

    .line 79
    invoke-virtual/range {v2 .. v14}, Landroid/app/IPowerGuru$Stub;->notifyPowerguruAlarm(IJJJJJLandroid/app/PendingIntent;)Z

    move-result v15

    .line 80
    .local v15, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v15, :cond_1

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v2, 0x1

    goto :goto_0

    .line 77
    .end local v14    # "_arg6":Landroid/app/PendingIntent;
    .end local v15    # "_result":Z
    :cond_0
    const/4 v14, 0x0

    .restart local v14    # "_arg6":Landroid/app/PendingIntent;
    goto :goto_1

    .line 81
    .restart local v15    # "_result":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .line 86
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":J
    .end local v6    # "_arg2":J
    .end local v8    # "_arg3":J
    .end local v10    # "_arg4":J
    .end local v12    # "_arg5":J
    .end local v14    # "_arg6":Landroid/app/PendingIntent;
    .end local v15    # "_result":Z
    :sswitch_3
    const-string v2, "android.app.IPowerGuru"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/app/IPowerGuru$Stub;->getBeatList()Ljava/util/List;

    move-result-object v16

    .line 88
    .local v16, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/PowerGuruAlarmInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 90
    const/4 v2, 0x1

    goto :goto_0

    .line 94
    .end local v16    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/PowerGuruAlarmInfo;>;"
    :sswitch_4
    const-string v2, "android.app.IPowerGuru"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/app/IPowerGuru$Stub;->getWhiteList()Ljava/util/List;

    move-result-object v17

    .line 96
    .local v17, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 98
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 102
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_5
    const-string v2, "android.app.IPowerGuru"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/IPowerGuru$Stub;->delWhiteAppfromList(Ljava/lang/String;)Z

    move-result v15

    .line 106
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v15, :cond_2

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 107
    :cond_2
    const/4 v2, 0x0

    goto :goto_3

    .line 112
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v15    # "_result":Z
    :sswitch_6
    const-string v2, "android.app.IPowerGuru"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p0 .. p0}, Landroid/app/IPowerGuru$Stub;->getWhiteCandicateList()Ljava/util/List;

    move-result-object v17

    .line 114
    .restart local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 116
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 120
    .end local v17    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_7
    const-string v2, "android.app.IPowerGuru"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 123
    .restart local v3    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/IPowerGuru$Stub;->addWhiteAppfromList(Ljava/lang/String;)Z

    move-result v15

    .line 124
    .restart local v15    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v15, :cond_3

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 125
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
