.class final Ldlu;
.super Ljava/lang/Object;
.source "DetailGuessPresenter.java"

# interfaces
.implements Lcom/wandoujia/account/listener/IAccountListener;


# instance fields
.field private synthetic a:Ldlr;


# direct methods
.method private constructor <init>(Ldlr;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Ldlu;->a:Ldlr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldlr;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-direct {p0, p1}, Ldlu;-><init>(Ldlr;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Ldlu;->a:Ldlr;

    invoke-virtual {v0}, Ldlr;->c()V

    .line 219
    return-void
.end method

.method public final a(Lcom/wandoujia/account/listener/IAccountListener$LoginType;)V
    .locals 1
    .parameter

    .prologue
    .line 211
    sget-object v0, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->LOGIN:Lcom/wandoujia/account/listener/IAccountListener$LoginType;

    invoke-virtual {v0, p1}, Lcom/wandoujia/account/listener/IAccountListener$LoginType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Ldlu;->a:Ldlr;

    invoke-virtual {v0}, Ldlr;->c()V

    .line 214
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Ldlu;->a:Ldlr;

    invoke-virtual {v0}, Ldlr;->c()V

    .line 224
    return-void
.end method
