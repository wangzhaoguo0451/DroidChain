.class public final enum Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;
.super Ljava/lang/Enum;
.source "FlingEvent.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

.field public static final enum DOWN:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

.field public static final enum LEFT:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

.field public static final enum RIGHT:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

.field public static final enum UP:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;->UP:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    .line 109
    new-instance v0, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;->DOWN:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    .line 113
    new-instance v0, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;->LEFT:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    .line 117
    new-instance v0, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;->RIGHT:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;->UP:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;->DOWN:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;->LEFT:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;->RIGHT:Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;->$VALUES:[Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

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
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 122
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;->value:I

    .line 123
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;
    .locals 1
    .parameter

    .prologue
    .line 103
    const-class v0, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;->$VALUES:[Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/FlingEvent$FlingDirection;->value:I

    return v0
.end method
