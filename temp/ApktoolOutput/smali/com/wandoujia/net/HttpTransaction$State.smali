.class public final enum Lcom/wandoujia/net/HttpTransaction$State;
.super Ljava/lang/Enum;
.source "HttpTransaction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/net/HttpTransaction$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/net/HttpTransaction$State;

.field public static final enum READ_BODY:Lcom/wandoujia/net/HttpTransaction$State;

.field public static final enum READ_HEADER:Lcom/wandoujia/net/HttpTransaction$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/wandoujia/net/HttpTransaction$State;

    const-string v1, "READ_HEADER"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/net/HttpTransaction$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/HttpTransaction$State;->READ_HEADER:Lcom/wandoujia/net/HttpTransaction$State;

    .line 31
    new-instance v0, Lcom/wandoujia/net/HttpTransaction$State;

    const-string v1, "READ_BODY"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/net/HttpTransaction$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/net/HttpTransaction$State;->READ_BODY:Lcom/wandoujia/net/HttpTransaction$State;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/net/HttpTransaction$State;

    sget-object v1, Lcom/wandoujia/net/HttpTransaction$State;->READ_HEADER:Lcom/wandoujia/net/HttpTransaction$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/net/HttpTransaction$State;->READ_BODY:Lcom/wandoujia/net/HttpTransaction$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/net/HttpTransaction$State;->$VALUES:[Lcom/wandoujia/net/HttpTransaction$State;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/net/HttpTransaction$State;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/wandoujia/net/HttpTransaction$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/net/HttpTransaction$State;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/net/HttpTransaction$State;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/wandoujia/net/HttpTransaction$State;->$VALUES:[Lcom/wandoujia/net/HttpTransaction$State;

    invoke-virtual {v0}, [Lcom/wandoujia/net/HttpTransaction$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/net/HttpTransaction$State;

    return-object v0
.end method
