.class public final enum Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;
.super Ljava/lang/Enum;
.source "NetworkPackage.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum CDMA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum CDMA_1xRTT:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum EDGE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum EHRPD:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum EVDO_0:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum EVDO_A:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum EVDO_B:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum GPRS:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum HSDPA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum HSPA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum HSPAP:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum HSUPA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum IDEN:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum LTE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum UMTS:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

.field public static final enum UNKNOWN:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;


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

    .line 181
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->UNKNOWN:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 185
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "GPRS"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->GPRS:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 189
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "EDGE"

    invoke-direct {v0, v1, v6, v6}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->EDGE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 193
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "UMTS"

    invoke-direct {v0, v1, v7, v7}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->UMTS:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 197
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "CDMA"

    invoke-direct {v0, v1, v8, v8}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->CDMA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 201
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "EVDO_0"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->EVDO_0:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 205
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "EVDO_A"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->EVDO_A:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 209
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "CDMA_1xRTT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->CDMA_1xRTT:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 213
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "HSDPA"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->HSDPA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 217
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "HSUPA"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->HSUPA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 221
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "HSPA"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->HSPA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 225
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "IDEN"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->IDEN:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 229
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "EVDO_B"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->EVDO_B:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 233
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "LTE"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->LTE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 237
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "EHRPD"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->EHRPD:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 241
    new-instance v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    const-string v1, "HSPAP"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->HSPAP:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    .line 179
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->UNKNOWN:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->GPRS:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->EDGE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->UMTS:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->CDMA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->EVDO_0:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->EVDO_A:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->CDMA_1xRTT:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->HSDPA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->HSUPA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->HSPA:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->IDEN:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->EVDO_B:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->LTE:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->EHRPD:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->HSPAP:Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->$VALUES:[Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

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
    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 246
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->value:I

    .line 247
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;
    .locals 1
    .parameter

    .prologue
    .line 179
    const-class v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->$VALUES:[Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/NetworkPackage$Subtype;->value:I

    return v0
.end method
