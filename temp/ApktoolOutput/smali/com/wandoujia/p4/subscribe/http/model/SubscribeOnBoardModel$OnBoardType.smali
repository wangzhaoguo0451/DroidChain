.class public final enum Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;
.super Ljava/lang/Enum;
.source "SubscribeOnBoardModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

.field public static final enum BUNDLE:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;
    .annotation runtime Lcwj;
        a = "BUNDLE"
    .end annotation
.end field

.field public static final enum BUNDLE_PUBLISHER:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;
    .annotation runtime Lcwj;
        a = "BUNDLE_PUBLISHER"
    .end annotation
.end field

.field public static final enum PUBLISHER:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;
    .annotation runtime Lcwj;
        a = "PUBLISHER"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    const-string v1, "PUBLISHER"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;->PUBLISHER:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    .line 21
    new-instance v0, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    const-string v1, "BUNDLE"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;->BUNDLE:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    .line 23
    new-instance v0, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    const-string v1, "BUNDLE_PUBLISHER"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;->BUNDLE_PUBLISHER:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    sget-object v1, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;->PUBLISHER:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;->BUNDLE:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;->BUNDLE_PUBLISHER:Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;->$VALUES:[Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;
    .locals 1
    .parameter

    .prologue
    .line 18
    const-class v0, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;->$VALUES:[Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/subscribe/http/model/SubscribeOnBoardModel$OnBoardType;

    return-object v0
.end method
