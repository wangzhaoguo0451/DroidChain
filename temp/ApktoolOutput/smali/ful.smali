.class public final Lful;
.super Ljava/lang/Object;
.source "MyGiftBeansActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/wandoujia/account/AccountParams;

    const-string v1, "myGift"

    invoke-direct {v0, v1}, Lcom/wandoujia/account/AccountParams;-><init>(Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/wandoujia/account/AccountParams$Page;->TEL_REGISTER:Lcom/wandoujia/account/AccountParams$Page;

    iput-object v1, v0, Lcom/wandoujia/account/AccountParams;->r:Lcom/wandoujia/account/AccountParams$Page;

    .line 69
    iput-boolean v2, v0, Lcom/wandoujia/account/AccountParams;->g:Z

    .line 70
    iput-boolean v2, v0, Lcom/wandoujia/account/AccountParams;->h:Z

    .line 71
    const/16 v1, 0x64

    iput v1, v0, Lcom/wandoujia/account/AccountParams;->c:I

    .line 73
    return-void
.end method
