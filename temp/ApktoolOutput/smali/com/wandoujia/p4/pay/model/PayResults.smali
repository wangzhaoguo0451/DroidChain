.class public abstract enum Lcom/wandoujia/p4/pay/model/PayResults;
.super Ljava/lang/Enum;
.source "PayResults.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/pay/model/PayResults;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/pay/model/PayResults;

.field private static final INVALID_ID:I

.field public static final enum In_Purchase:Lcom/wandoujia/p4/pay/model/PayResults;

.field public static final enum In_Recharge:Lcom/wandoujia/p4/pay/model/PayResults;

.field public static final enum Purchase_Fail:Lcom/wandoujia/p4/pay/model/PayResults;

.field public static final enum Purchase_Success:Lcom/wandoujia/p4/pay/model/PayResults;

.field public static final enum Recharge_Fail:Lcom/wandoujia/p4/pay/model/PayResults;

.field public static final enum Recharge_Success:Lcom/wandoujia/p4/pay/model/PayResults;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/wandoujia/p4/pay/model/PayResults$1;

    const-string v1, "In_Purchase"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/pay/model/PayResults$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayResults;->In_Purchase:Lcom/wandoujia/p4/pay/model/PayResults;

    .line 28
    new-instance v0, Lcom/wandoujia/p4/pay/model/PayResults$2;

    const-string v1, "Purchase_Success"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/pay/model/PayResults$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayResults;->Purchase_Success:Lcom/wandoujia/p4/pay/model/PayResults;

    .line 46
    new-instance v0, Lcom/wandoujia/p4/pay/model/PayResults$3;

    const-string v1, "Purchase_Fail"

    invoke-direct {v0, v1, v5}, Lcom/wandoujia/p4/pay/model/PayResults$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayResults;->Purchase_Fail:Lcom/wandoujia/p4/pay/model/PayResults;

    .line 64
    new-instance v0, Lcom/wandoujia/p4/pay/model/PayResults$4;

    const-string v1, "In_Recharge"

    invoke-direct {v0, v1, v6}, Lcom/wandoujia/p4/pay/model/PayResults$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayResults;->In_Recharge:Lcom/wandoujia/p4/pay/model/PayResults;

    .line 82
    new-instance v0, Lcom/wandoujia/p4/pay/model/PayResults$5;

    const-string v1, "Recharge_Success"

    invoke-direct {v0, v1, v7}, Lcom/wandoujia/p4/pay/model/PayResults$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayResults;->Recharge_Success:Lcom/wandoujia/p4/pay/model/PayResults;

    .line 100
    new-instance v0, Lcom/wandoujia/p4/pay/model/PayResults$6;

    const-string v1, "Recharge_Fail"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/model/PayResults$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayResults;->Recharge_Fail:Lcom/wandoujia/p4/pay/model/PayResults;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/wandoujia/p4/pay/model/PayResults;

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayResults;->In_Purchase:Lcom/wandoujia/p4/pay/model/PayResults;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayResults;->Purchase_Success:Lcom/wandoujia/p4/pay/model/PayResults;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayResults;->Purchase_Fail:Lcom/wandoujia/p4/pay/model/PayResults;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayResults;->In_Recharge:Lcom/wandoujia/p4/pay/model/PayResults;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wandoujia/p4/pay/model/PayResults;->Recharge_Success:Lcom/wandoujia/p4/pay/model/PayResults;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/wandoujia/p4/pay/model/PayResults;->Recharge_Fail:Lcom/wandoujia/p4/pay/model/PayResults;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wandoujia/p4/pay/model/PayResults;->$VALUES:[Lcom/wandoujia/p4/pay/model/PayResults;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/wandoujia/p4/pay/model/PayResults$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/wandoujia/p4/pay/model/PayResults;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/pay/model/PayResults;
    .locals 1
    .parameter

    .prologue
    .line 8
    const-class v0, Lcom/wandoujia/p4/pay/model/PayResults;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/model/PayResults;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/pay/model/PayResults;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/wandoujia/p4/pay/model/PayResults;->$VALUES:[Lcom/wandoujia/p4/pay/model/PayResults;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/pay/model/PayResults;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/pay/model/PayResults;

    return-object v0
.end method


# virtual methods
.method public abstract iconId()I
.end method

.method public abstract titleId()I
.end method

.method public abstract withContact()Z
.end method
