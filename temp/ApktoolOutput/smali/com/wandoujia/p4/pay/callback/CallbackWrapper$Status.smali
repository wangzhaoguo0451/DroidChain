.class public final enum Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;
.super Ljava/lang/Enum;
.source "CallbackWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

.field public static final enum CANCEL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

.field public static final enum FAIL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

.field public static final enum SUCCESS:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->CANCEL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    .line 15
    new-instance v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->SUCCESS:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    .line 16
    new-instance v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    const-string v1, "FAIL"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->FAIL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    sget-object v1, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->CANCEL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->SUCCESS:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->FAIL:Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->$VALUES:[Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->$VALUES:[Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    invoke-virtual {v0}, [Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/p4/pay/callback/CallbackWrapper$Status;

    return-object v0
.end method
