.class public final enum Lcom/wandoujia/account/widget/AccountEditText$ContentType;
.super Ljava/lang/Enum;
.source "AccountEditText.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/account/widget/AccountEditText$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/account/widget/AccountEditText$ContentType;

.field public static final enum EMAIL:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

.field public static final enum PASSWORD:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

.field public static final enum TELEPHONE:Lcom/wandoujia/account/widget/AccountEditText$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    const-string v1, "TELEPHONE"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/widget/AccountEditText$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->TELEPHONE:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    new-instance v0, Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/account/widget/AccountEditText$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->EMAIL:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    new-instance v0, Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    const-string v1, "PASSWORD"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/account/widget/AccountEditText$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->PASSWORD:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    .line 32
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->TELEPHONE:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->EMAIL:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->PASSWORD:Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->$VALUES:[Lcom/wandoujia/account/widget/AccountEditText$ContentType;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/account/widget/AccountEditText$ContentType;
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/account/widget/AccountEditText$ContentType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/wandoujia/account/widget/AccountEditText$ContentType;->$VALUES:[Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    invoke-virtual {v0}, [Lcom/wandoujia/account/widget/AccountEditText$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/account/widget/AccountEditText$ContentType;

    return-object v0
.end method
