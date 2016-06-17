.class public final enum Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;
.super Ljava/lang/Enum;
.source "TaskEvent.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

.field public static final enum CANCEL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

.field public static final enum FAIL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

.field public static final enum SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    .line 262
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->FAIL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    .line 266
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->CANCEL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    .line 256
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->SUCCESS:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->FAIL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->CANCEL:Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->$VALUES:[Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

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
    .line 270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 271
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->value:I

    .line 272
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;
    .locals 1
    .parameter

    .prologue
    .line 256
    const-class v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->$VALUES:[Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Result;->value:I

    return v0
.end method
