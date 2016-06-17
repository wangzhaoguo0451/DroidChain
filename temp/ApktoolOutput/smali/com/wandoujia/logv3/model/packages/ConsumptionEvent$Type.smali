.class public final enum Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;
.super Ljava/lang/Enum;
.source "ConsumptionEvent.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

.field public static final enum AUTO_DOWNLOAD:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

.field public static final enum DOWNLOAD:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

.field public static final enum INSTALL:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

.field public static final enum LOCAL_PLAY:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

.field public static final enum ONLINE_PLAY:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

.field public static final enum OPEN:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

.field public static final enum READ:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

.field public static final enum SET_AS_WALLPAPER:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

.field public static final enum UNINSTALL:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

.field public static final enum UPGRADE:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    .line 159
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    const-string v1, "ONLINE_PLAY"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->ONLINE_PLAY:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    .line 163
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    const-string v1, "LOCAL_PLAY"

    invoke-direct {v0, v1, v6, v6}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->LOCAL_PLAY:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    .line 167
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    const-string v1, "READ"

    invoke-direct {v0, v1, v7, v7}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->READ:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    .line 171
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    const-string v1, "SET_AS_WALLPAPER"

    invoke-direct {v0, v1, v8, v8}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->SET_AS_WALLPAPER:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    .line 175
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    const-string v1, "OPEN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->OPEN:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    .line 179
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    const-string v1, "UPGRADE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->UPGRADE:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    .line 183
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    const-string v1, "INSTALL"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->INSTALL:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    .line 187
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    const-string v1, "UNINSTALL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->UNINSTALL:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    .line 191
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    const-string v1, "AUTO_DOWNLOAD"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->AUTO_DOWNLOAD:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    .line 153
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->DOWNLOAD:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->ONLINE_PLAY:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->LOCAL_PLAY:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->READ:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->SET_AS_WALLPAPER:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->OPEN:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->UPGRADE:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->INSTALL:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->UNINSTALL:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->AUTO_DOWNLOAD:Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->value:I

    .line 197
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;
    .locals 1
    .parameter

    .prologue
    .line 153
    const-class v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ConsumptionEvent$Type;->value:I

    return v0
.end method
