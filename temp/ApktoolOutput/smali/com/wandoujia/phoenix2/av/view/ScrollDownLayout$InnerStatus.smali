.class public final enum Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;
.super Ljava/lang/Enum;
.source "ScrollDownLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

.field public static final enum CLOSED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

.field public static final enum INITIAL:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

.field public static final enum MOVING:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

.field public static final enum OPENED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

.field public static final enum SCROLLING:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 439
    new-instance v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->INITIAL:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    new-instance v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    const-string v1, "OPENED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->OPENED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    new-instance v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->CLOSED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    new-instance v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    const-string v1, "MOVING"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->MOVING:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    new-instance v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    const-string v1, "SCROLLING"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->SCROLLING:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    .line 438
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    sget-object v1, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->INITIAL:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->OPENED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->CLOSED:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->MOVING:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->SCROLLING:Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->$VALUES:[Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

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
    .line 438
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;
    .locals 1
    .parameter

    .prologue
    .line 438
    const-class v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;
    .locals 1

    .prologue
    .line 438
    sget-object v0, Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->$VALUES:[Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    invoke-virtual {v0}, [Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/phoenix2/av/view/ScrollDownLayout$InnerStatus;

    return-object v0
.end method
