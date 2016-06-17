.class final Lexe;
.super Ljava/lang/Object;
.source "UpgradableAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/wandoujia/appmanager/LocalAppInfo;

.field private synthetic b:Ldaq;

.field private synthetic c:I


# direct methods
.method constructor <init>(Lcom/wandoujia/appmanager/LocalAppInfo;Ldaq;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lexe;->a:Lcom/wandoujia/appmanager/LocalAppInfo;

    iput-object p2, p0, Lexe;->b:Ldaq;

    iput p3, p0, Lexe;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lexe;->a:Lcom/wandoujia/appmanager/LocalAppInfo;

    iget-object v1, p0, Lexe;->b:Ldaq;

    iget v2, p0, Lexe;->c:I

    invoke-static {v0, v1, v2}, Lewx;->a(Lcom/wandoujia/appmanager/LocalAppInfo;Ldaq;I)V

    .line 398
    return-void
.end method
