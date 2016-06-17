.class public final enum Lcom/wandoujia/launcher/Config$ContentDir;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/launcher/Config$ContentDir;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum APP:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum BACKUP:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum BOOK:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum CAPTURE:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum CLIENT:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum COMMUNITY:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum CONFIG:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum DATA:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum DIAGNOSIS:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum EXPORT:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum IMAGE:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum MARIO:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum MD5:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum MISC:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum MUSIC:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum PHOTOSYNC:Lcom/wandoujia/launcher/Config$ContentDir;

.field public static final enum VIDEO:Lcom/wandoujia/launcher/Config$ContentDir;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "APP"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->APP:Lcom/wandoujia/launcher/Config$ContentDir;

    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->MUSIC:Lcom/wandoujia/launcher/Config$ContentDir;

    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->VIDEO:Lcom/wandoujia/launcher/Config$ContentDir;

    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->IMAGE:Lcom/wandoujia/launcher/Config$ContentDir;

    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "BOOK"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->BOOK:Lcom/wandoujia/launcher/Config$ContentDir;

    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "BACKUP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->BACKUP:Lcom/wandoujia/launcher/Config$ContentDir;

    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "DIAGNOSIS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->DIAGNOSIS:Lcom/wandoujia/launcher/Config$ContentDir;

    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "EXPORT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->EXPORT:Lcom/wandoujia/launcher/Config$ContentDir;

    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "CONFIG"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->CONFIG:Lcom/wandoujia/launcher/Config$ContentDir;

    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "MD5"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->MD5:Lcom/wandoujia/launcher/Config$ContentDir;

    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "DATA"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->DATA:Lcom/wandoujia/launcher/Config$ContentDir;

    .line 43
    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "CLIENT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->CLIENT:Lcom/wandoujia/launcher/Config$ContentDir;

    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "CAPTURE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->CAPTURE:Lcom/wandoujia/launcher/Config$ContentDir;

    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "PHOTOSYNC"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->PHOTOSYNC:Lcom/wandoujia/launcher/Config$ContentDir;

    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "MISC"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->MISC:Lcom/wandoujia/launcher/Config$ContentDir;

    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "MARIO"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->MARIO:Lcom/wandoujia/launcher/Config$ContentDir;

    new-instance v0, Lcom/wandoujia/launcher/Config$ContentDir;

    const-string v1, "COMMUNITY"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/launcher/Config$ContentDir;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->COMMUNITY:Lcom/wandoujia/launcher/Config$ContentDir;

    .line 41
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/wandoujia/launcher/Config$ContentDir;

    sget-object v1, Lcom/wandoujia/launcher/Config$ContentDir;->APP:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/launcher/Config$ContentDir;->MUSIC:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/launcher/Config$ContentDir;->VIDEO:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/launcher/Config$ContentDir;->IMAGE:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/launcher/Config$ContentDir;->BOOK:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/launcher/Config$ContentDir;->BACKUP:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/launcher/Config$ContentDir;->DIAGNOSIS:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/launcher/Config$ContentDir;->EXPORT:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/launcher/Config$ContentDir;->CONFIG:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/launcher/Config$ContentDir;->MD5:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/launcher/Config$ContentDir;->DATA:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/launcher/Config$ContentDir;->CLIENT:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/launcher/Config$ContentDir;->CAPTURE:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/launcher/Config$ContentDir;->PHOTOSYNC:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/launcher/Config$ContentDir;->MISC:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/launcher/Config$ContentDir;->MARIO:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/wandoujia/launcher/Config$ContentDir;->COMMUNITY:Lcom/wandoujia/launcher/Config$ContentDir;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->$VALUES:[Lcom/wandoujia/launcher/Config$ContentDir;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/launcher/Config$ContentDir;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/wandoujia/launcher/Config$ContentDir;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/launcher/Config$ContentDir;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/launcher/Config$ContentDir;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/wandoujia/launcher/Config$ContentDir;->$VALUES:[Lcom/wandoujia/launcher/Config$ContentDir;

    invoke-virtual {v0}, [Lcom/wandoujia/launcher/Config$ContentDir;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/launcher/Config$ContentDir;

    return-object v0
.end method
