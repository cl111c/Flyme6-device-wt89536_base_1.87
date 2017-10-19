.class public final Landroid/app/PowerGuruAlarmInfo;
.super Ljava/lang/Object;
.source "PowerGuruAlarmInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/PowerGuruAlarmInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actionName:Ljava/lang/String;

.field public alarmType:I

.field public componentName:Ljava/lang/String;

.field public isAvailable:Z

.field public isFromGMS:Z

.field public packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Landroid/app/PowerGuruAlarmInfo$1;

    invoke-direct {v0}, Landroid/app/PowerGuruAlarmInfo$1;-><init>()V

    sput-object v0, Landroid/app/PowerGuruAlarmInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/PowerGuruAlarmInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 0
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_actionName"    # Ljava/lang/String;
    .param p3, "_componentName"    # Ljava/lang/String;
    .param p4, "_alarmType"    # I
    .param p5, "_isGms"    # Z
    .param p6, "_isAvailable"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    .line 42
    iput p4, p0, Landroid/app/PowerGuruAlarmInfo;->alarmType:I

    .line 44
    iput-boolean p5, p0, Landroid/app/PowerGuruAlarmInfo;->isFromGMS:Z

    .line 45
    iput-boolean p6, p0, Landroid/app/PowerGuruAlarmInfo;->isAvailable:Z

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlarmType()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Landroid/app/PowerGuruAlarmInfo;->alarmType:I

    return v0
.end method

.method public getAvailable()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/app/PowerGuruAlarmInfo;->isAvailable:Z

    return v0
.end method

.method public getCpnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    return-object v0
.end method

.method public getFromGMS()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Landroid/app/PowerGuruAlarmInfo;->isFromGMS:Z

    return v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/PowerGuruAlarmInfo;->alarmType:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/app/PowerGuruAlarmInfo;->isFromGMS:Z

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/app/PowerGuruAlarmInfo;->isAvailable:Z

    .line 147
    return-void

    :cond_0
    move v0, v2

    .line 145
    goto :goto_0

    :cond_1
    move v1, v2

    .line 146
    goto :goto_1
.end method

.method public setAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    return-object p1
.end method

.method public setAlarmType(I)I
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 106
    iput p1, p0, Landroid/app/PowerGuruAlarmInfo;->alarmType:I

    return p1
.end method

.method public setAvailable(Z)V
    .locals 0
    .param p1, "avail"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Landroid/app/PowerGuruAlarmInfo;->isAvailable:Z

    .line 114
    return-void
.end method

.method public setCpnt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "cpnt"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    return-object p1
.end method

.method public setFromGMS(Z)V
    .locals 0
    .param p1, "fromGms"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Landroid/app/PowerGuruAlarmInfo;->isFromGMS:Z

    .line 110
    return-void
.end method

.method public setPkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "p: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " t: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/PowerGuruAlarmInfo;->alarmType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " gms: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/PowerGuruAlarmInfo;->isFromGMS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ava: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/PowerGuruAlarmInfo;->isAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Landroid/app/PowerGuruAlarmInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Landroid/app/PowerGuruAlarmInfo;->actionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroid/app/PowerGuruAlarmInfo;->componentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Landroid/app/PowerGuruAlarmInfo;->alarmType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-boolean v0, p0, Landroid/app/PowerGuruAlarmInfo;->isFromGMS:Z

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    :goto_0
    iget-boolean v0, p0, Landroid/app/PowerGuruAlarmInfo;->isAvailable:Z

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    :goto_1
    return-void

    .line 129
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
