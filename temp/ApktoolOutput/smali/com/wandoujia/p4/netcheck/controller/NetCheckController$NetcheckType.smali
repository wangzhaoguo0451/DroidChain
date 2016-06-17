.class public final enum Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;
.super Ljava/lang/Enum;
.source "NetCheckController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

.field public static final enum DNS:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

.field public static final enum DOWN:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

.field public static final enum EMAIL:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

.field public static final enum FAILED:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

.field public static final enum IP:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

.field public static final enum PING:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

.field public static final enum RETRY_POST:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

.field public static final enum TCP:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

.field public static final enum TRACE:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    new-instance v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    const-string v1, "IP"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->IP:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    new-instance v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    const-string v1, "DNS"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->DNS:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    new-instance v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    const-string v1, "PING"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->PING:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    new-instance v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    const-string v1, "TRACE"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->TRACE:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    new-instance v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->DOWN:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    new-instance v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    const-string v1, "TCP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->TCP:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    new-instance v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    const-string v1, "FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->FAILED:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    new-instance v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    const-string v1, "EMAIL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->EMAIL:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    new-instance v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    const-string v1, "RETRY_POST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->RETRY_POST:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    .line 66
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    sget-object v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->IP:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->DNS:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->PING:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->TRACE:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->DOWN:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->TCP:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->FAILED:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->EMAIL:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->RETRY_POST:Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->$VALUES:[Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;
    .locals 1
    .parameter

    .prologue
    .line 66
    const-class v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->$VALUES:[Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/netcheck/controller/NetCheckController$NetcheckType;

    return-object v0
.end method
