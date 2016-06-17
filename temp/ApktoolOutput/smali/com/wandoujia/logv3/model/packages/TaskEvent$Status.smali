.class public final enum Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;
.super Ljava/lang/Enum;
.source "TaskEvent.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

.field public static final enum END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

.field public static final enum PAUSE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

.field public static final enum PENDING:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

.field public static final enum READY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

.field public static final enum RETRY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

.field public static final enum START:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

.field public static final enum TRIGGER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;


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

    .line 218
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    const-string v1, "START"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->START:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    .line 222
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    const-string v1, "RETRY"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->RETRY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    .line 226
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    const-string v1, "END"

    invoke-direct {v0, v1, v6, v6}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    .line 230
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v7, v7}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->PAUSE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    .line 234
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    const-string v1, "READY"

    invoke-direct {v0, v1, v8, v8}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->READY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    .line 238
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->PENDING:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    .line 242
    new-instance v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    const-string v1, "TRIGGER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->TRIGGER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    .line 216
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->START:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->RETRY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->END:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->PAUSE:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->READY:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->PENDING:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->TRIGGER:Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->$VALUES:[Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

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
    .line 246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 247
    iput p3, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->value:I

    .line 248
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;
    .locals 1
    .parameter

    .prologue
    .line 216
    const-class v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->$VALUES:[Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    invoke-virtual {v0}, [Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/wandoujia/logv3/model/packages/TaskEvent$Status;->value:I

    return v0
.end method
