.class final Ldne;
.super Ljava/lang/Object;
.source "FavoritableButtonPresenter.java"

# interfaces
.implements Lgcj;


# instance fields
.field a:Ldnc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Ldne;->a:Ldnc;

    .line 119
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Ldne;->a:Ldnc;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Ldne;->a:Ldnc;

    invoke-virtual {v0}, Ldnc;->e()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lgcd;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Ldne;->a()V

    .line 134
    iget-object v0, p0, Ldne;->a:Ldnc;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Ldne;->a:Ldnc;

    invoke-static {v0, p1}, Ldnc;->a(Ldnc;Lgcd;)V

    .line 137
    :cond_0
    return-void
.end method

.method public final b(Lgcd;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    invoke-direct {p0}, Ldne;->a()V

    .line 142
    return-void
.end method

.method public final c(Lgcd;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    invoke-direct {p0}, Ldne;->a()V

    .line 147
    iget-object v0, p0, Ldne;->a:Ldnc;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Ldne;->a:Ldnc;

    invoke-static {v0, p1}, Ldnc;->a(Ldnc;Lgcd;)V

    .line 150
    :cond_0
    return-void
.end method

.method public final d(Lgcd;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    invoke-direct {p0}, Ldne;->a()V

    .line 155
    return-void
.end method
