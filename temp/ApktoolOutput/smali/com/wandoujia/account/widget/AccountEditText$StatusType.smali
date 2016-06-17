.class public final enum Lcom/wandoujia/account/widget/AccountEditText$StatusType;
.super Ljava/lang/Enum;
.source "AccountEditText.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/account/widget/AccountEditText$StatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/account/widget/AccountEditText$StatusType;

.field public static final enum LOGIN:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

.field public static final enum REGISTER:Lcom/wandoujia/account/widget/AccountEditText$StatusType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/widget/AccountEditText$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/widget/AccountEditText$StatusType;->LOGIN:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    new-instance v0, Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    const-string v1, "REGISTER"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/account/widget/AccountEditText$StatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/widget/AccountEditText$StatusType;->REGISTER:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$StatusType;->LOGIN:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$StatusType;->REGISTER:Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wandoujia/account/widget/AccountEditText$StatusType;->$VALUES:[Lcom/wandoujia/account/widget/AccountEditText$StatusType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/account/widget/AccountEditText$StatusType;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-class v0, Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/account/widget/AccountEditText$StatusType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/wandoujia/account/widget/AccountEditText$StatusType;->$VALUES:[Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    invoke-virtual {v0}, [Lcom/wandoujia/account/widget/AccountEditText$StatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/account/widget/AccountEditText$StatusType;

    return-object v0
.end method
