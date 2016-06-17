.class public Lcom/wandoujia/account/storage/AccountStorageException;
.super Ljava/lang/Exception;
.source "AccountStorageException.java"


# static fields
.field private static final serialVersionUID:J = 0x490c80e091bf8129L


# instance fields
.field private final type:Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;


# direct methods
.method public constructor <init>(Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/wandoujia/account/storage/AccountStorageException;->type:Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    .line 17
    return-void
.end method


# virtual methods
.method public getExceptionType()Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wandoujia/account/storage/AccountStorageException;->type:Lcom/wandoujia/account/storage/AccountStorageException$ExceptionType;

    return-object v0
.end method
