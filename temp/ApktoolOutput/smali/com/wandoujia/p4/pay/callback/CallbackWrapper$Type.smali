.class public final enum Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;
.super Ljava/lang/Enum;
.source "CallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

.field public static final enum CHECKPAY:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

.field public static final enum LOGIN:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

.field public static final enum LOGOUT:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

.field public static final enum PAY:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

.field public static final enum RECHARGE:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

.field public static final enum RELOGIN:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

.field public static final enum SINGLEPAY:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    new-instance v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->LOGIN:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    .line 21
    new-instance v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    const-string v1, "LOGOUT"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->LOGOUT:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    .line 22
    new-instance v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    const-string v1, "RELOGIN"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->RELOGIN:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    .line 23
    new-instance v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    const-string v1, "PAY"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->PAY:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    .line 24
    new-instance v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    const-string v1, "CHECKPAY"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->CHECKPAY:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    .line 25
    new-instance v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    const-string v1, "SINGLEPAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->SINGLEPAY:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    .line 26
    new-instance v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    const-string v1, "RECHARGE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->RECHARGE:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    .line 19
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    sget-object v1, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->LOGIN:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->LOGOUT:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->RELOGIN:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->PAY:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->CHECKPAY:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->SINGLEPAY:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->RECHARGE:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->$VALUES:[Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->$VALUES:[Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Type;

    return-object v0
.end method
