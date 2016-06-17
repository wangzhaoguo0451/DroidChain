.class public final enum Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;
.super Ljava/lang/Enum;
.source "AccountStorageException.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

.field public static final enum ACCOUNT_ALREADY_EXISTED:Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

.field public static final enum ACCOUNT_NOT_EXISTED:Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

.field public static final enum EXECUTE_FAILED:Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    const-string v1, "ACCOUNT_ALREADY_EXISTED"

    invoke-direct {v0, v1, v2}, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;->ACCOUNT_ALREADY_EXISTED:Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    .line 11
    new-instance v0, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    const-string v1, "ACCOUNT_NOT_EXISTED"

    invoke-direct {v0, v1, v3}, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;->ACCOUNT_NOT_EXISTED:Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    .line 12
    new-instance v0, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    const-string v1, "EXECUTE_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;->EXECUTE_FAILED:Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    sget-object v1, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;->ACCOUNT_ALREADY_EXISTED:Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;->ACCOUNT_NOT_EXISTED:Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;->EXECUTE_FAILED:Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;->$VALUES:[Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;
    .locals 1
    .parameter

    .prologue
    .line 9
    const-class v0, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    return-object v0
.end method

.method public static values()[Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;->$VALUES:[Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    invoke-virtual {v0}, [Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    return-object v0
.end method
