.class public final Lamy;
.super Ljava/lang/Object;
.source "DraweeHolder.java"

# interfaces
.implements Lamq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lamu;",
        ">",
        "Ljava/lang/Object;",
        "Lamq;"
    }
.end annotation


# instance fields
.field public a:Lamu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDH;"
        }
    .end annotation
.end field

.field public b:Lamt;

.field public final c:Lcom/facebook/drawee/components/DraweeEventTracker;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-boolean v0, p0, Lamy;->d:Z

    .line 54
    iput-boolean v0, p0, Lamy;->e:Z

    .line 55
    iput-boolean v1, p0, Lamy;->f:Z

    .line 56
    iput-boolean v1, p0, Lamy;->g:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lamy;->b:Lamt;

    .line 60
    new-instance v0, Lcom/facebook/drawee/components/DraweeEventTracker;

    invoke-direct {v0}, Lcom/facebook/drawee/components/DraweeEventTracker;-><init>()V

    iput-object v0, p0, Lamy;->c:Lcom/facebook/drawee/components/DraweeEventTracker;

    .line 92
    new-instance v0, Lamz;

    invoke-direct {v0}, Lamz;-><init>()V

    .line 106
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 269
    iget-boolean v0, p0, Lamy;->d:Z

    if-eqz v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lamy;->c:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_ATTACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamy;->d:Z

    .line 274
    iget-object v0, p0, Lamy;->b:Lamt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lamy;->b:Lamt;

    invoke-interface {v0}, Lamt;->c()Lamu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lamy;->b:Lamt;

    invoke-interface {v0}, Lamt;->d()V

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 281
    iget-boolean v0, p0, Lamy;->d:Z

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lamy;->c:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DETACH_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamy;->d:Z

    .line 286
    iget-object v0, p0, Lamy;->b:Lamt;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lamy;->b:Lamt;

    invoke-interface {v0}, Lamt;->e()V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lamy;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lamy;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lamy;->g:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lamy;->e()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-direct {p0}, Lamy;->f()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 163
    iget-boolean v0, p0, Lamy;->d:Z

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 168
    :cond_0
    const-class v0, Lcom/facebook/drawee/components/DraweeEventTracker;

    const-string v1, "%x: Draw requested for a non-attached controller %x. %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lamy;->b:Lamt;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    invoke-virtual {p0}, Lamy;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lakf;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iput-boolean v5, p0, Lamy;->e:Z

    .line 175
    iput-boolean v5, p0, Lamy;->f:Z

    .line 176
    iput-boolean v5, p0, Lamy;->g:Z

    .line 177
    invoke-direct {p0}, Lamy;->g()V

    goto :goto_0
.end method

.method public final a(Lamq;)V
    .locals 2
    .parameter

    .prologue
    .line 184
    invoke-virtual {p0}, Lamy;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    instance-of v1, v0, Lamp;

    if-eqz v1, :cond_0

    .line 186
    check-cast v0, Lamp;

    invoke-interface {v0, p1}, Lamp;->a(Lamq;)V

    .line 188
    :cond_0
    return-void
.end method

.method public final a(Lamt;)V
    .locals 3
    .parameter

    .prologue
    .line 203
    iget-boolean v0, p0, Lamy;->d:Z

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0}, Lamy;->f()V

    .line 209
    :cond_0
    iget-object v1, p0, Lamy;->b:Lamt;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lamy;->c:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_OLD_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 211
    iget-object v1, p0, Lamy;->b:Lamt;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lamt;->a(Lamu;)V

    .line 213
    :cond_1
    iput-object p1, p0, Lamy;->b:Lamt;

    .line 214
    iget-object v1, p0, Lamy;->b:Lamt;

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lamy;->c:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_SET_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 216
    iget-object v1, p0, Lamy;->b:Lamt;

    iget-object v2, p0, Lamy;->a:Lamu;

    invoke-interface {v1, v2}, Lamt;->a(Lamu;)V

    .line 221
    :goto_0
    if-eqz v0, :cond_2

    .line 222
    invoke-direct {p0}, Lamy;->e()V

    .line 224
    :cond_2
    return-void

    .line 218
    :cond_3
    iget-object v1, p0, Lamy;->c:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v2, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_CLEAR_CONTROLLER:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 149
    iget-boolean v0, p0, Lamy;->f:Z

    if-ne v0, p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lamy;->c:Lcom/facebook/drawee/components/DraweeEventTracker;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_SHOW:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 153
    iput-boolean p1, p0, Lamy;->f:Z

    .line 154
    invoke-direct {p0}, Lamy;->g()V

    goto :goto_0

    .line 152
    :cond_1
    sget-object v0, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_DRAWABLE_HIDE:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    goto :goto_1
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lamy;->c:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_ATTACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lamy;->e:Z

    .line 117
    invoke-direct {p0}, Lamy;->g()V

    .line 118
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lamy;->c:Lcom/facebook/drawee/components/DraweeEventTracker;

    sget-object v1, Lcom/facebook/drawee/components/DraweeEventTracker$Event;->ON_HOLDER_DETACH:Lcom/facebook/drawee/components/DraweeEventTracker$Event;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/components/DraweeEventTracker;->a(Lcom/facebook/drawee/components/DraweeEventTracker$Event;)V

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lamy;->e:Z

    .line 129
    invoke-direct {p0}, Lamy;->g()V

    .line 130
    return-void
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lamy;->a:Lamu;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lamy;->a:Lamu;

    invoke-interface {v0}, Lamu;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    invoke-static {p0}, Ld;->c(Ljava/lang/Object;)Lakb;

    move-result-object v0

    const-string v1, "controllerAttached"

    iget-boolean v2, p0, Lamy;->d:Z

    invoke-virtual {v0, v1, v2}, Lakb;->a(Ljava/lang/String;Z)Lakb;

    move-result-object v0

    const-string v1, "holderAttached"

    iget-boolean v2, p0, Lamy;->e:Z

    invoke-virtual {v0, v1, v2}, Lakb;->a(Ljava/lang/String;Z)Lakb;

    move-result-object v0

    const-string v1, "drawableVisible"

    iget-boolean v2, p0, Lamy;->f:Z

    invoke-virtual {v0, v1, v2}, Lakb;->a(Ljava/lang/String;Z)Lakb;

    move-result-object v0

    const-string v1, "activityStarted"

    iget-boolean v2, p0, Lamy;->g:Z

    invoke-virtual {v0, v1, v2}, Lakb;->a(Ljava/lang/String;Z)Lakb;

    move-result-object v0

    const-string v1, "events"

    iget-object v2, p0, Lamy;->c:Lcom/facebook/drawee/components/DraweeEventTracker;

    invoke-virtual {v2}, Lcom/facebook/drawee/components/DraweeEventTracker;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lakb;->a(Ljava/lang/String;Ljava/lang/Object;)Lakb;

    move-result-object v0

    invoke-virtual {v0}, Lakb;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
