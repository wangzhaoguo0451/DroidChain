.class public final Ldid;
.super Ljava/lang/Object;
.source "FavoriteMenu.java"

# interfaces
.implements Lgcj;


# instance fields
.field public a:Ldic;


# direct methods
.method public constructor <init>(Ldic;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Ldid;->a:Ldic;

    .line 100
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Ldid;->a:Ldic;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Ldid;->a:Ldic;

    iget-object v0, v0, Ldic;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lgcd;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Ldid;->a()V

    .line 115
    iget-object v0, p0, Ldid;->a:Ldic;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Ldid;->a:Ldic;

    invoke-static {v0, p1}, Ldic;->a(Ldic;Lgcd;)V

    .line 118
    :cond_0
    return-void
.end method

.method public final b(Lgcd;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Ldid;->a()V

    .line 123
    return-void
.end method

.method public final c(Lgcd;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, Ldid;->a()V

    .line 128
    iget-object v0, p0, Ldid;->a:Ldic;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Ldid;->a:Ldic;

    invoke-static {v0, p1}, Ldic;->a(Ldic;Lgcd;)V

    .line 131
    :cond_0
    return-void
.end method

.method public final d(Lgcd;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    invoke-direct {p0}, Ldid;->a()V

    .line 136
    return-void
.end method
