.class final Lfqg;
.super Landroid/database/CursorWrapper;
.source "ExternalDatabaseHelper.java"


# instance fields
.field private a:Z

.field private synthetic b:Lfqc;


# direct methods
.method public constructor <init>(Lfqc;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lfqg;->b:Lfqc;

    .line 276
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 273
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfqg;->a:Z

    .line 277
    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 1

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 282
    iget-boolean v0, p0, Lfqg;->a:Z

    if-nez v0, :cond_0

    .line 283
    iget-object v0, p0, Lfqg;->b:Lfqc;

    #calls: Lfqc;->unlock()V
    invoke-static {v0}, Lfqc;->access$100(Lfqc;)V

    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfqg;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :cond_0
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
