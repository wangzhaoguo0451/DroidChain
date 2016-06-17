.class public final enum Lcom/wandoujia/api/proto/Trigger$Source;
.super Ljava/lang/Enum;
.source "Trigger.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/api/proto/Trigger$Source;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/api/proto/Trigger$Source;

.field public static final enum APP_CHANGE:Lcom/wandoujia/api/proto/Trigger$Source;

.field public static final enum NOTIFICATION:Lcom/wandoujia/api/proto/Trigger$Source;

.field public static final enum SMS:Lcom/wandoujia/api/proto/Trigger$Source;

.field public static final enum TIMER:Lcom/wandoujia/api/proto/Trigger$Source;


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

    .line 86
    new-instance v0, Lcom/wandoujia/api/proto/Trigger$Source;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/api/proto/Trigger$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/Trigger$Source;->SMS:Lcom/wandoujia/api/proto/Trigger$Source;

    .line 87
    new-instance v0, Lcom/wandoujia/api/proto/Trigger$Source;

    const-string v1, "TIMER"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/api/proto/Trigger$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/Trigger$Source;->TIMER:Lcom/wandoujia/api/proto/Trigger$Source;

    .line 88
    new-instance v0, Lcom/wandoujia/api/proto/Trigger$Source;

    const-string v1, "APP_CHANGE"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/api/proto/Trigger$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/Trigger$Source;->APP_CHANGE:Lcom/wandoujia/api/proto/Trigger$Source;

    .line 89
    new-instance v0, Lcom/wandoujia/api/proto/Trigger$Source;

    const-string v1, "NOTIFICATION"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/api/proto/Trigger$Source;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/api/proto/Trigger$Source;->NOTIFICATION:Lcom/wandoujia/api/proto/Trigger$Source;

    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/api/proto/Trigger$Source;

    sget-object v1, Lcom/wandoujia/api/proto/Trigger$Source;->SMS:Lcom/wandoujia/api/proto/Trigger$Source;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/api/proto/Trigger$Source;->TIMER:Lcom/wandoujia/api/proto/Trigger$Source;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/api/proto/Trigger$Source;->APP_CHANGE:Lcom/wandoujia/api/proto/Trigger$Source;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/api/proto/Trigger$Source;->NOTIFICATION:Lcom/wandoujia/api/proto/Trigger$Source;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/api/proto/Trigger$Source;->$VALUES:[Lcom/wandoujia/api/proto/Trigger$Source;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput p3, p0, Lcom/wandoujia/api/proto/Trigger$Source;->value:I

    .line 95
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/api/proto/Trigger$Source;
    .locals 1
    .parameter

    .prologue
    .line 84
    const-class v0, Lcom/wandoujia/api/proto/Trigger$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/api/proto/Trigger$Source;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/api/proto/Trigger$Source;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/wandoujia/api/proto/Trigger$Source;->$VALUES:[Lcom/wandoujia/api/proto/Trigger$Source;

    invoke-virtual {v0}, [Lcom/wandoujia/api/proto/Trigger$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/api/proto/Trigger$Source;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/wandoujia/api/proto/Trigger$Source;->value:I

    return v0
.end method
