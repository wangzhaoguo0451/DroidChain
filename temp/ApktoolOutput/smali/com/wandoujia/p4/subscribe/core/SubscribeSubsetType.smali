.class public final enum Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;
.super Ljava/lang/Enum;
.source "SubscribeSubsetType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;

.field public static final enum LIST:Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;
    .annotation runtime Lcwj;
        a = "LIST"
    .end annotation
.end field

.field public static final enum SINGLE:Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;
    .annotation runtime Lcwj;
        a = "SINGLE"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;

    const-string v1, "SINGLE"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;->SINGLE:Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;

    .line 16
    new-instance v0, Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;->LIST:Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;

    sget-object v1, Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;->SINGLE:Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;->LIST:Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;->$VALUES:[Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;->$VALUES:[Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/subscribe/core/SubscribeSubsetType;

    return-object v0
.end method
