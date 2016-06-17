.class public final enum Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;
.super Ljava/lang/Enum;
.source "MediaPlayerState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

.field public static final enum COMPLETED:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum ERROR:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

.field public static final enum IDLE:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

.field public static final enum PAUSE:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

.field public static final enum PLAYING:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

.field public static final enum PREPARED:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

.field public static final enum PREPARING:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

.field public static final enum SEEKING:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

.field public static final enum STOPPED:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->IDLE:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    new-instance v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->PREPARING:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    new-instance v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    const-string v1, "PREPARED"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->PREPARED:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    new-instance v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    const-string v1, "PLAYING"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->PLAYING:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    new-instance v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    const-string v1, "SEEKING"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->SEEKING:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    new-instance v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    const-string v1, "PAUSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->PAUSE:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    new-instance v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    const-string v1, "STOPPED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->STOPPED:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    new-instance v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    const-string v1, "COMPLETED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->COMPLETED:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    new-instance v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    const-string v1, "ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->ERROR:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    .line 11
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    sget-object v1, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->IDLE:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->PREPARING:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->PREPARED:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->PLAYING:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->SEEKING:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->PAUSE:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->STOPPED:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->COMPLETED:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->ERROR:Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->$VALUES:[Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    .line 14
    new-instance v0, Lgwi;

    invoke-direct {v0}, Lgwi;-><init>()V

    sput-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->$VALUES:[Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;

    return-object v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/wandoujia/p4/webdownload/player/model/MediaPlayerState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    return-void
.end method
