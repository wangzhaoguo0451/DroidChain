.class public final enum Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;
.super Ljava/lang/Enum;
.source "ClientPackage.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum ADS:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum ANDROID:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum ANDROID_EYEPETIZER:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum GAME_LAUNCHER:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum GAME_SDK:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum IOS:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum IOS_EYEPETIZER:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum IOS_RIPPLE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum JUPITER:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum MARIO_SDK:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum MUSIC_X:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum PUSH_SDK:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum RIPPLE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum SNAPLOCK:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum USB_CONNECTION:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

.field public static final enum WINDOWS:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;


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

    .line 279
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "WINDOWS"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->WINDOWS:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 283
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->ANDROID:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 287
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "USB_CONNECTION"

    invoke-direct {v0, v1, v6, v6}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->USB_CONNECTION:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 291
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "GAME_SDK"

    invoke-direct {v0, v1, v7, v7}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->GAME_SDK:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 295
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "MARIO_SDK"

    invoke-direct {v0, v1, v8, v8}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->MARIO_SDK:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 299
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "IOS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->IOS:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 303
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "ADS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->ADS:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 307
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "IOS_EYEPETIZER"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->IOS_EYEPETIZER:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 311
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "RIPPLE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->RIPPLE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 315
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "MUSIC_X"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->MUSIC_X:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 319
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "SNAPLOCK"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->SNAPLOCK:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 323
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "ANDROID_EYEPETIZER"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->ANDROID_EYEPETIZER:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 327
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "IOS_RIPPLE"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->IOS_RIPPLE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 331
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "JUPITER"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->JUPITER:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 335
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "GAME_LAUNCHER"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->GAME_LAUNCHER:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 339
    new-instance v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    const-string v1, "PUSH_SDK"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->PUSH_SDK:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    .line 277
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->WINDOWS:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->ANDROID:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->USB_CONNECTION:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->GAME_SDK:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->MARIO_SDK:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->IOS:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->ADS:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->IOS_EYEPETIZER:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->RIPPLE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->MUSIC_X:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->SNAPLOCK:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->ANDROID_EYEPETIZER:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->IOS_RIPPLE:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->JUPITER:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->GAME_LAUNCHER:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->PUSH_SDK:Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

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
    .line 343
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 344
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->value:I

    .line 345
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;
    .locals 1
    .parameter

    .prologue
    .line 277
    const-class v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->$VALUES:[Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/ClientPackage$Product;->value:I

    return v0
.end method
