.class public final enum Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;
.super Ljava/lang/Enum;
.source "VideoLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

.field public static final enum ACCEL_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

.field public static final enum CDN_REQUEST_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

.field public static final enum CLIPINFO_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

.field public static final enum CONVERT_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

.field public static final enum PROVIDER_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

.field public static final enum REQUEST_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    const-string v1, "ACCEL_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;->ACCEL_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    .line 59
    new-instance v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    const-string v1, "CDN_REQUEST_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;->CDN_REQUEST_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    .line 63
    new-instance v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    const-string v1, "PROVIDER_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;->PROVIDER_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    .line 67
    new-instance v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    const-string v1, "CLIPINFO_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;->CLIPINFO_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    .line 71
    new-instance v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    const-string v1, "REQUEST_ERROR"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;->REQUEST_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    .line 75
    new-instance v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    const-string v1, "CONVERT_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;->CONVERT_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    .line 51
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    sget-object v1, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;->ACCEL_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;->CDN_REQUEST_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;->PROVIDER_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;->CLIPINFO_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;->REQUEST_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;->CONVERT_ERROR:Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;->$VALUES:[Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;
    .locals 1
    .parameter

    .prologue
    .line 51
    const-class v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;->$VALUES:[Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/video/util/VideoLogger$ErrorType;

    return-object v0
.end method
