.class public final enum Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;
.super Ljava/lang/Enum;
.source "Coordinate.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

.field public static final enum GCJ_02:Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

.field public static final enum WGS_84:Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    new-instance v0, Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

    const-string v1, "WGS_84"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;->WGS_84:Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

    .line 114
    new-instance v0, Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

    const-string v1, "GCJ_02"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;->GCJ_02:Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

    sget-object v1, Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;->WGS_84:Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;->GCJ_02:Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;->$VALUES:[Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

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
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput p3, p0, Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;->value:I

    .line 120
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;
    .locals 1
    .parameter

    .prologue
    .line 111
    const-class v0, Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;->$VALUES:[Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

    invoke-virtual {v0}, [Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/wandoujia/api/proto/Coordinate$CoordinateStandard;->value:I

    return v0
.end method
