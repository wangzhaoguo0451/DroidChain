.class public final enum Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;
.super Ljava/lang/Enum;
.source "ViewFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

.field public static final enum CLICK:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

.field public static final enum INVISIBLE:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

.field public static final enum PART:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

.field public static final enum VISIBLE:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;


# instance fields
.field private priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v2, v2}, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->CLICK:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    .line 35
    new-instance v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->VISIBLE:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    .line 36
    new-instance v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    const-string v1, "PART"

    invoke-direct {v0, v1, v4, v4}, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->PART:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    .line 37
    new-instance v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->INVISIBLE:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    sget-object v1, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->CLICK:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->VISIBLE:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->PART:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->INVISIBLE:Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->$VALUES:[Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->priority:I

    .line 43
    return-void
.end method

.method public static synthetic access$000(Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->priority:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;
    .locals 1
    .parameter

    .prologue
    .line 33
    const-class v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->$VALUES:[Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    invoke-virtual {v0}, [Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;

    return-object v0
.end method


# virtual methods
.method final priority(Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;)Z
    .locals 2
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->priority:I

    iget v1, p1, Lcom/wandoujia/ripple_framework/video/ViewFocusManager$STATE;->priority:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
