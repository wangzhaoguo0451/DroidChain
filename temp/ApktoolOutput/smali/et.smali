.class public abstract Let;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# instance fields
.field public a:Leu;

.field private b:Lev;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/view/View;
.end method

.method public a(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-virtual {p0}, Let;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/SubMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    return-void
.end method

.method public a(Lev;)V
    .locals 2
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Let;->b:Lev;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instance while it is still in use somewhere else?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_0
    iput-object p1, p0, Let;->b:Lev;

    .line 242
    return-void
.end method

.method public final a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Let;->a:Leu;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Let;->a:Leu;

    invoke-interface {v0, p1}, Leu;->a(Z)V

    .line 220
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method
