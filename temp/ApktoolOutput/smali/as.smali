.class public final Las;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Lce;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lce",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field b:Laq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcd",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field e:Z

.field public f:Ljava/lang/Object;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field k:Las;

.field private l:Landroid/os/Bundle;

.field private m:Z

.field private n:Z

.field private synthetic o:Lar;


# direct methods
.method public constructor <init>(Lar;ILandroid/os/Bundle;Laq;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Laq",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    iput-object p1, p0, Las;->o:Lar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput p2, p0, Las;->a:I

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Las;->l:Landroid/os/Bundle;

    .line 231
    iput-object p4, p0, Las;->b:Laq;

    .line 232
    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 235
    iget-boolean v0, p0, Las;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Las;->i:Z

    if-eqz v0, :cond_1

    .line 239
    iput-boolean v3, p0, Las;->g:Z

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-boolean v0, p0, Las;->g:Z

    if-nez v0, :cond_0

    .line 248
    iput-boolean v3, p0, Las;->g:Z

    .line 250
    iget-object v0, p0, Las;->c:Lcd;

    if-nez v0, :cond_2

    iget-object v0, p0, Las;->b:Laq;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Las;->b:Laq;

    iget v1, p0, Las;->a:I

    invoke-interface {v0, v1}, Laq;->a(I)Lcd;

    move-result-object v0

    iput-object v0, p0, Las;->c:Lcd;

    .line 254
    :cond_2
    iget-object v0, p0, Las;->c:Lcd;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Las;->c:Lcd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Las;->c:Lcd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Las;->c:Lcd;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_3
    iget-boolean v0, p0, Las;->n:Z

    if-nez v0, :cond_5

    .line 262
    iget-object v0, p0, Las;->c:Lcd;

    iget v1, p0, Las;->a:I

    iget-object v2, v0, Lcd;->b:Lce;

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-object p0, v0, Lcd;->b:Lce;

    iput v1, v0, Lcd;->a:I

    .line 263
    iput-boolean v3, p0, Las;->n:Z

    .line 265
    :cond_5
    iget-object v0, p0, Las;->c:Lcd;

    iput-boolean v3, v0, Lcd;->c:Z

    iput-boolean v4, v0, Lcd;->e:Z

    iput-boolean v4, v0, Lcd;->d:Z

    invoke-virtual {v0}, Lcd;->a()V

    goto :goto_0
.end method

.method public final a(Lcd;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcd",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 362
    iget-boolean v0, p0, Las;->m:Z

    if-eqz v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    iget-object v0, p0, Las;->o:Lar;

    iget-object v0, v0, Lar;->a:Lek;

    iget v1, p0, Las;->a:I

    invoke-virtual {v0, v1}, Lek;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 376
    iget-object v0, p0, Las;->k:Las;

    .line 377
    if-eqz v0, :cond_2

    .line 381
    iput-object v3, p0, Las;->k:Las;

    .line 383
    iget-object v1, p0, Las;->o:Lar;

    iget-object v1, v1, Lar;->a:Lek;

    iget v2, p0, Las;->a:I

    invoke-virtual {v1, v2, v3}, Lek;->a(ILjava/lang/Object;)V

    .line 384
    invoke-virtual {p0}, Las;->c()V

    .line 385
    iget-object v1, p0, Las;->o:Lar;

    invoke-virtual {v1, v0}, Lar;->a(Las;)V

    goto :goto_0

    .line 391
    :cond_2
    iget-object v0, p0, Las;->f:Ljava/lang/Object;

    if-ne v0, p2, :cond_3

    iget-boolean v0, p0, Las;->d:Z

    if-nez v0, :cond_4

    .line 392
    :cond_3
    iput-object p2, p0, Las;->f:Ljava/lang/Object;

    .line 393
    iput-boolean v4, p0, Las;->d:Z

    .line 394
    iget-boolean v0, p0, Las;->g:Z

    if-eqz v0, :cond_4

    .line 395
    invoke-virtual {p0, p1, p2}, Las;->b(Lcd;Ljava/lang/Object;)V

    .line 405
    :cond_4
    iget-object v0, p0, Las;->o:Lar;

    iget-object v0, v0, Lar;->b:Lek;

    iget v1, p0, Las;->a:I

    invoke-virtual {v0, v1}, Lek;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Las;

    .line 406
    if-eqz v0, :cond_5

    if-eq v0, p0, :cond_5

    .line 407
    const/4 v1, 0x0

    iput-boolean v1, v0, Las;->e:Z

    .line 408
    invoke-virtual {v0}, Las;->c()V

    .line 409
    iget-object v0, p0, Las;->o:Lar;

    iget-object v0, v0, Lar;->b:Lek;

    iget v1, p0, Las;->a:I

    iget-object v2, v0, Lek;->c:[I

    iget v3, v0, Lek;->e:I

    invoke-static {v2, v3, v1}, Ldx;->a([III)I

    move-result v1

    if-ltz v1, :cond_5

    iget-object v2, v0, Lek;->d:[Ljava/lang/Object;

    aget-object v2, v2, v1

    sget-object v3, Lek;->a:Ljava/lang/Object;

    if-eq v2, v3, :cond_5

    iget-object v2, v0, Lek;->d:[Ljava/lang/Object;

    sget-object v3, Lek;->a:Ljava/lang/Object;

    aput-object v3, v2, v1

    iput-boolean v4, v0, Lek;->b:Z

    .line 412
    :cond_5
    iget-object v0, p0, Las;->o:Lar;

    iget-object v0, v0, Lar;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Las;->o:Lar;

    invoke-virtual {v0}, Lar;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Las;->o:Lar;

    iget-object v0, v0, Lar;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lu;

    invoke-virtual {v0}, Lu;->g()V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 451
    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Las;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 452
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Las;->l:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 453
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Las;->b:Laq;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 454
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Las;->c:Lcd;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Las;->c:Lcd;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Las;->c:Lcd;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcd;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 458
    :cond_0
    iget-boolean v0, p0, Las;->d:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Las;->e:Z

    if-eqz v0, :cond_2

    .line 459
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Las;->d:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 460
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Las;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 461
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Las;->f:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 463
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Las;->g:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 464
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Las;->j:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 465
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Las;->m:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 466
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Las;->h:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 467
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Las;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 468
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Las;->n:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 469
    iget-object v0, p0, Las;->k:Las;

    if-eqz v0, :cond_3

    .line 470
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Las;->k:Las;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    iget-object p0, p0, Las;->k:Las;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 474
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 314
    iput-boolean v1, p0, Las;->g:Z

    .line 316
    iget-boolean v0, p0, Las;->h:Z

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Las;->c:Lcd;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Las;->n:Z

    if-eqz v0, :cond_0

    .line 319
    iput-boolean v1, p0, Las;->n:Z

    .line 320
    iget-object v0, p0, Las;->c:Lcd;

    invoke-virtual {v0, p0}, Lcd;->a(Lce;)V

    .line 321
    iget-object v0, p0, Las;->c:Lcd;

    iput-boolean v1, v0, Lcd;->c:Z

    invoke-virtual {v0}, Lcd;->b()V

    .line 324
    :cond_0
    return-void
.end method

.method public final b(Lcd;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcd",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Las;->b:Laq;

    if-eqz v0, :cond_1

    .line 419
    const/4 v0, 0x0

    .line 420
    iget-object v1, p0, Las;->o:Lar;

    iget-object v1, v1, Lar;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v1, :cond_3

    .line 421
    iget-object v0, p0, Las;->o:Lar;

    iget-object v0, v0, Lar;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lu;

    iget-object v0, v0, Lu;->j:Ljava/lang/String;

    .line 422
    iget-object v1, p0, Las;->o:Lar;

    iget-object v1, v1, Lar;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Lu;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Lu;->j:Ljava/lang/String;

    move-object v1, v0

    .line 425
    :goto_0
    :try_start_0
    iget-object v0, p0, Las;->b:Laq;

    invoke-interface {v0, p1, p2}, Laq;->a(Lcd;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    iget-object v0, p0, Las;->o:Lar;

    iget-object v0, v0, Lar;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Las;->o:Lar;

    iget-object v0, v0, Lar;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lu;

    iput-object v1, v0, Lu;->j:Ljava/lang/String;

    .line 433
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Las;->e:Z

    .line 435
    :cond_1
    return-void

    .line 429
    :catchall_0
    move-exception v0

    iget-object v2, p0, Las;->o:Lar;

    iget-object v2, v2, Lar;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_2

    .line 430
    iget-object v2, p0, Las;->o:Lar;

    iget-object v2, v2, Lar;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Lu;

    iput-object v1, v2, Lu;->j:Ljava/lang/String;

    :cond_2
    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method final c()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 327
    :goto_0
    iput-boolean v5, p0, Las;->m:Z

    .line 329
    iget-boolean v0, p0, Las;->e:Z

    .line 330
    iput-boolean v4, p0, Las;->e:Z

    .line 331
    iget-object v2, p0, Las;->b:Laq;

    if-eqz v2, :cond_0

    iget-object v2, p0, Las;->c:Lcd;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Las;->d:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Las;->o:Lar;

    iget-object v0, v0, Lar;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_4

    .line 335
    iget-object v0, p0, Las;->o:Lar;

    iget-object v0, v0, Lar;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Lu;

    iget-object v0, v0, Lu;->j:Ljava/lang/String;

    .line 336
    iget-object v2, p0, Las;->o:Lar;

    iget-object v2, v2, Lar;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Lu;

    const-string v3, "onLoaderReset"

    iput-object v3, v2, Lu;->j:Ljava/lang/String;

    .line 339
    :goto_1
    iget-object v2, p0, Las;->o:Lar;

    iget-object v2, v2, Lar;->d:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Las;->o:Lar;

    iget-object v2, v2, Lar;->d:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Lu;

    iput-object v0, v2, Lu;->j:Ljava/lang/String;

    .line 341
    :cond_0
    iput-object v1, p0, Las;->b:Laq;

    .line 347
    iput-object v1, p0, Las;->f:Ljava/lang/Object;

    .line 348
    iput-boolean v4, p0, Las;->d:Z

    .line 349
    iget-object v0, p0, Las;->c:Lcd;

    if-eqz v0, :cond_2

    .line 350
    iget-boolean v0, p0, Las;->n:Z

    if-eqz v0, :cond_1

    .line 351
    iput-boolean v4, p0, Las;->n:Z

    .line 352
    iget-object v0, p0, Las;->c:Lcd;

    invoke-virtual {v0, p0}, Lcd;->a(Lce;)V

    .line 354
    :cond_1
    iget-object v0, p0, Las;->c:Lcd;

    invoke-virtual {v0}, Lcd;->c()V

    iput-boolean v5, v0, Lcd;->e:Z

    iput-boolean v4, v0, Lcd;->c:Z

    iput-boolean v4, v0, Lcd;->d:Z

    .line 356
    :cond_2
    iget-object v0, p0, Las;->k:Las;

    if-eqz v0, :cond_3

    .line 357
    iget-object p0, p0, Las;->k:Las;

    goto :goto_0

    .line 359
    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 440
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget v1, p0, Las;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 444
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget-object v1, p0, Las;->c:Lcd;

    invoke-static {v1, v0}, Ld;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 446
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
